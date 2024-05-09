from itertools import combinations
import sys

# from sympy import *
from sympy import diff
from sympy import simplify
from sympy import sympify



# from a import compute_optimal_probability
from aspmc.programs.smprogram import SMProblogProgram
import aspmc.config as config
import time

import sys
import random
import math

import argparse



from arguments import parse_arguments
from em_solver import setup_program_EM, evaluate_function_EM
from opt_solver import solve_with_optimization
from eqs_handler import get_nice_eqs, evaluate_eq, my_log, parse_facts

FALSE_INDEX = 0
TRUE_INDEX = 1
LP_INDEX = 0
UP_INDEX = 1


def main():
    '''
    Main function.
    '''

    arguments = parse_arguments()

    interpretation_eq_dict : 'dict[int,str]' = {}

    target : str = arguments.target
    simplify = not arguments.skip_simplify

    # step 1: parse the program
    fp = open(arguments.filename, "r")
    lines = fp.readlines()
    fp.close()

    if arguments.init_prob > 1 or (arguments.init_prob < 0 and arguments.init_prob != -1):
        print("Init prob must be between 0 and 1 or -1 (random)")
        sys.exit()

    print(arguments)
    prog = parse_facts(lines, arguments.init_prob)

    # prog.print_program()

    ll0 = 0
    if arguments.method == "opt":
        start_time_tot = time.time()
        vals, final_ll = solve_with_optimization(prog, target, interpretation_eq_dict, arguments.opt_alg, simplify)
        print(f"-----")
        print(f"Final LL: {final_ll}")
        for var, val in zip(sorted(prog.learnable_facts), vals):
            print(f"P({var}) = {val}")
        print(f"Opt total time: {time.time() - start_time_tot} seconds")
    else:
        joint_prob_pf_int : 'dict[str,list[list[tuple[str,str]]]]' = {}
    
        # print(f"Initial LL: {ll0}")
        iteration_count : int = 0
        epsilon : float = arguments.epsilon
        max_iterations : int = arguments.max_it

        delta_ll_list : 'list[float]' = []
        ll_list : 'list[float]' = []

        ll1 : float = 0
        # EM cycle
        start_time_tot = time.time()
        while (iteration_count == 0) or ((ll1 - ll0) > epsilon) and iteration_count < max_iterations:
            iteration_count += 1

            start_it_time = time.time()
            # extract eqs, only first iteration
            if iteration_count == 1:
                ll0 = 0
                ll1 = 0
                prg_to_query = setup_program_EM(prog)

                if arguments.verbosity >= 2:
                    for l in prg_to_query:
                        print(l)
                
                # sys.exit()
                eq_lp_list, eq_up_list = get_nice_eqs(prg_to_query, list(prog.learnable_facts.keys()), target, simplify, opt_mode=False)

                # print(f"len: {len(eq_up_list)}")

                if len(eq_lp_list) != len(eq_up_list):
                    print(f"N lp {len(eq_lp_list)} != N up {len(eq_up_list)}")
                    sys.exit()

                n_extracted = max(len(eq_lp_list),len(eq_up_list))
                n_expected = len(prog.interpretations_dict) + len(prog.learnable_facts) * len(prog.interpretations_dict) * 2

                if n_extracted != n_expected:
                    print("Error in extracting equations")
                    print(f"Extracted {n_extracted}, expected: {n_expected}")
                    sys.exit()
    
                eq_lp_list = list(reversed(eq_lp_list)) # <-------------
                eq_up_list = list(reversed(eq_up_list)) # <-------------

                # for l, u in zip(eq_lp_list, eq_up_list):
                #     print(f"l: {l} - u: {u}")
                # print(len(eq_lp_list))

                # nell'ordine:
                # - per ogni interpretazione i
                #   - per ogni fatto prob pf
                #       - P(not pf, i)
                #       - P(pf, i)

                if arguments.verbosity >= 1:
                    print(f"len: {len(eq_up_list)}")
                    print(len(prog.interpretations_dict))
                for idx, key_val in enumerate(prog.interpretations_dict):
                    # print(f"inserisco ({idx}): {prog.interpretations_dict[key_val].get_interpretation_head()}")
                    # print(eq_up_list[idx])
                    if arguments.verbosity >= 2:
                        ih = prog.interpretations_dict[key_val].get_interpretation_head()
                        print(f"P({ih})-> L: {eq_lp_list[idx]}, U: {eq_up_list[idx]}")
                    
                    if target == "upper":
                        interpretation_eq_dict[key_val] = eq_up_list[idx]
                    else: 
                        interpretation_eq_dict[key_val] = eq_lp_list[idx]

                    # compute initial LL
                    ll0 += my_log(evaluate_eq(interpretation_eq_dict[key_val], prog.learnable_facts))

                print(f"Initial LL: {ll0}")
                if arguments.verbosity >= 2:
                    print(f"{len(prog.learnable_facts)}*{len(prog.interpretations_dict)}")
                index = idx + 1
                for lf in prog.learnable_facts:
                    # print("-----")
                    # print(f"inserisco ({index}): {lf}")
                    # false - true
                    joint_prob_pf_int[lf] = [[],[]]
                    for idx_int in range(len(prog.interpretations_dict)):
                        joint_prob_pf_int[lf][FALSE_INDEX].append((eq_lp_list[index],eq_up_list[index]))
                        index += 1
                        joint_prob_pf_int[lf][TRUE_INDEX].append((eq_lp_list[index],eq_up_list[index]))
                        index += 1
                        if arguments.verbosity >= 2:
                            ih = prog.interpretations_dict[key_val].get_interpretation_head()
                            print(f"P(not {lf}, {ih}) -> L: {eq_lp_list[index]}, U: {eq_up_list[index]}")
                            print(f"P({lf}, {ih}) -> L: {eq_lp_list[index]}, U: {eq_up_list[index]}")

                # print(f"termine: {index}")
                # print(f"Obtained: {joint_prob_pf_int}")
            else:                
                ll0 = ll1
                ll1 = 0

            # EM: compute probabilities and update
            # ciclo su tutti i fatti prob e sommo su tutte le interpretazioni
            for pf in prog.learnable_facts:
                expect_false = 0
                expect_true = 0
                # sommo tutte le interpretazioni
                for idx, interpret_number in enumerate(interpretation_eq_dict):
                    # print(idx,interpret_number)
                    # p_interpret = evaluate_function_EM(interpretation_eq_dict[interpret_number], prog.learnable_facts)
                    if target == "upper":
                        lp_q_and_e = evaluate_function_EM(
                            joint_prob_pf_int[pf][TRUE_INDEX][idx][LP_INDEX],
                            prog.learnable_facts
                        )
                        up_q_and_e = evaluate_function_EM(
                            joint_prob_pf_int[pf][TRUE_INDEX][idx][UP_INDEX],
                            prog.learnable_facts
                        )

                        lp_not_q_and_e = evaluate_function_EM(
                            joint_prob_pf_int[pf][FALSE_INDEX][idx][LP_INDEX],
                            prog.learnable_facts
                        )
                        up_not_q_and_e = evaluate_function_EM(
                            joint_prob_pf_int[pf][FALSE_INDEX][idx][UP_INDEX],
                            prog.learnable_facts
                        )
                        
                        if arguments.verbosity >= 2:
                            print("q and e: LP, UP - not q and e: LP, UP")
                            print((lp_q_and_e,up_q_and_e),(lp_not_q_and_e,up_not_q_and_e))
                            
                        # cond prob fact true
                        if up_q_and_e + lp_not_q_and_e == 0 and up_not_q_and_e > 0:
                            cond_prob_true = 0
                        elif up_q_and_e == 0 and up_not_q_and_e == 0:
                            cond_prob_true = 0 # this is undefined
                        else:
                            cond_prob_true = up_q_and_e / (up_q_and_e + lp_not_q_and_e)
                        
                        # cond prob fact false
                        if up_not_q_and_e + lp_q_and_e == 0 and up_q_and_e > 0:
                            cond_prob_false = 0
                        elif up_q_and_e == 0 and up_not_q_and_e == 0:
                            cond_prob_false = 0 # this is undefined
                        else:
                            cond_prob_false = up_not_q_and_e / (up_not_q_and_e + lp_q_and_e)
                    else:
                        print("To implement")

                    ih = prog.interpretations_dict[interpret_number].get_interpretation_head()
                    if arguments.verbosity >= 2:
                        print(f"P(not {pf} | {ih}) = {cond_prob_false}")
                        print(f"P({pf} | {ih}) = {cond_prob_true}")
                    expect_false += cond_prob_false
                    expect_true += cond_prob_true

                if expect_true + expect_false == 0:
                    new_prob = prog.learnable_facts[pf]
                else: 
                    new_prob = expect_true / (expect_true + expect_false)

                # sys.exit()

                print(f"{pf}: {prog.learnable_facts[pf]} -> {new_prob}")
                prog.learnable_facts[pf] = new_prob
            
            # compute LL
            for idx in prog.interpretations_dict:
                ll1 += my_log(evaluate_eq(interpretation_eq_dict[idx], prog.learnable_facts))
            
            delta_ll_list.append(ll1-ll0)
            ll_list.append(ll1)
            print(f"it: {iteration_count}, LL: {ll1}, delta: {ll1 - ll0} in {time.time() - start_it_time} seconds")
        print("-----")
        print(f"Final LL: {ll1}")
        for pf in prog.learnable_facts:
            print(f"{pf}: {prog.learnable_facts[pf]}")
        print(f"EM loop time: {time.time() - start_time_tot} seconds")
        
        if arguments.plot:
            import matplotlib.pyplot as plt
            # x_axis_delta_ll = list(range(len(delta_ll_list)))
            # x_axis_ll = list(range(len(ll_list)))
            # plt.figure(figsize=(8, 4))
            # plt.subplot(121)
            # plt.bar(x_axis_delta_ll, delta_ll_list)
            # plt.subplot(122)
            # plt.scatter(x_axis_ll, ll_list)
            fig, (ax1, ax2) = plt.subplots(1, 2, layout='constrained')
            ax1.plot(delta_ll_list)
            ax1.set_title('Delta LL')
            ax1.set_xlabel('Iteration')
            ax1.set_ylabel('Delta LL')

            ax2.plot(ll_list)
            ax2.set_title('LL')
            ax2.set_xlabel('Iteration')
            ax2.set_ylabel('LL')

            fig.suptitle('LL stats', fontsize=16)


            plt.show()


if __name__ == "__main__":
    main()