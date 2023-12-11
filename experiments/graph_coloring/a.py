
from aspmc.programs.smprogram import SMProblogProgram
import aspmc.config as config

from sympy import *

from scipy.optimize import minimize
from scipy.optimize import NonlinearConstraint
from scipy.optimize import shgo

import time

import sys

class Problem:
    '''
    Optimizable problem
    '''
    def __init__(
        self,
        function_to_opt : str,
        symbolic_variables : 'list[str]'
        ) -> None:
        self.function_to_opt = function_to_opt
        self.symbolic_variables = symbolic_variables


    def eval_fn(self, x : 'list[float]', other_to_eval : str = ""):
        '''
        Evaluates the constraint function
        '''
        if other_to_eval == "":
            s = str(self.function_to_opt)
        else:
            s = str(other_to_eval)
        
        # print("pre s")
        # print(s)
        for idx, val in enumerate(self.symbolic_variables):
            s = s.replace(val, str(x[idx]))
        # # return sympify(s)
        # return simplify_chunk(s)
        # print(self.symbolic_variables)
        # print(s)
        return eval(s)


    def jac_fn(self, x: 'list[float]'):
        '''
        Jacobian function
        '''
        j = []
        s = self.function_to_opt
        for symbolic_var in self.symbolic_variables:
            d = diff(s,symbolic_var)
            # print(f"diff {s}:")
            # print(str(d))
            j.append(self.eval_fn(x,str(d).replace(' ','')))
        return j


def get_eq(
        program_str : str,
        query : str,
        opt_var_dict : 'dict[str,tuple[float,float]]'
    ):
    '''
    Extracts the eq from the program for the given query
    '''
    

    config.config["knowledge_compiler"] = "c2d"
    # time aspmc -m smproblog b_10_ground.lp -c -k c2d

    program_files = []
    strategy = "flexible"
    preprocessing = False
    
    start_time = time.time()
    
    program = SMProblogProgram(program_str, program_files)
    program._decomposeGraph()

    program.tpUnfold()
    program.td_guided_both_clark_completion(adaptive=False, latest=False)

    cnf = program.get_cnf()
    # print(program.get_weights())

    keep_symbolic : 'dict[int,str]' = {}
    for el in program._nameMap:
        if program._nameMap[el] in opt_var_dict:
            keep_symbolic[el] = program._nameMap[el]

    # added to keep track of the variables
    cnf.mapping_id_val = keep_symbolic

    results = cnf.evaluate(strategy = strategy, preprocessing = preprocessing)
    # al posto di evaluate potrei usare solve_compilation_two e fare il caching
    # se mi salvo il DDNNF posso usare usare parse_wmc per leggere non dal file ma
    # dal DDNNF salvato
    
    nnf_construction_time = time.time() - start_time
    print(f"nnf_construction_time: {nnf_construction_time}")
    
    if len(results) > 0:
        # added
        # print(results)
        lp_res = results[0][0]
        up_res = results[1][0]
        # query = "q"
        # print(f"Lower Probabiility: {query}: {' '*max(1,(20 - len(query)))}{lp_res}")
        # print(f"Upper Probabiility: {query}: {' '*max(1,(20 - len(query)))}{up_res}")

    eq_lp = results[3]
    eq_up = results[4]

    eq_lp = eq_lp.replace('[0.]','0').replace('[1.]','1').replace('[','').replace(']','').replace('(1)*','').replace('*(1)','')
    # eq_up = eq_up.replace('[0.]','0').replace('[1.]','1').replace('[','').replace(']','').replace('(1)*','').replace('*(1)','')

    # for the simplification
    # symplified = simplify_chunk(initial_equation, chunk_size)
    
    # print(eq_lp)
    # print(eq_up)
    # sys.exit()
    
    # slp = str(simplify(sympify(eq_lp)))
    # print(slp)
    # print(eq_up)
    print("Pre simplification")
    # print(f"number of sums: {eq_up.count('+')}")
    print(f"number of sums: {eq_lp.count('+')}")
    # print(f"number of prods: {eq_up.count('*')}")
    print(f"number of prods: {eq_lp.count('*')}")
    
    start_time = time.time()
    # sup = str(simplify(sympify(eq_up)))
    slp = str(simplify(sympify(eq_lp)))
    # print(sup)
    print(slp)
    symp_time = time.time() - start_time
    print("Post simplification")
    print(f"symp_time: {symp_time}")
    # print(f"number of sums: {sup.count('+')}")
    print(f"number of sums: {slp.count('+')}")
    print(f"number of sub: {slp.count('-')}")
    print(f"number of prods: {slp.count('*')}")
    
    return slp, "", keep_symbolic
    # s = (0.502*v_6*1)/0.99+((1-v_6)*1*0.4*1)/0.01+(0.6*1*1*v_6)/0.99+((1-v_6)*0.5*1*1*1*1)/0.01+(0.4*v_6*1*0)/0.99+(0.01*(1-v_6)*1*1*1)/0.01+(0*0.6*1*1*1*1*v_6)/0.99+(1-v_6)*0.5*1/0.001


def compute_optimal_probability(
        program : str,
        query_list : 'list[str]',
        optimizable_facts: 'dict[str, tuple[float, float]]',
        target_equation : str,
        constraints_list : 'list[str]',
        target : str = "UP",
        method : str = "SLSQP"
    ):
    '''
    Compute the optimal value to associate to probabilistic facts.
    query.
    '''
    constraints_from_queries : 'dict[str,str]' = {}

    # 1 extract the queries
    for query in query_list:
        current_prog = program + f"\nquery({query}).\n"
        lq, uq, symb_vars = get_eq(current_prog,query,optimizable_facts)
        symb_vars = dict(sorted(symb_vars.items(), reverse = True))
        for k_nnf, name in symb_vars.items():
            lq = lq.replace(f"v_{k_nnf}",name)
            uq = uq.replace(f"v_{k_nnf}",name)
        # print(symb_vars)
        if target == "UP":
            constraints_from_queries[query] = uq
        else:
            constraints_from_queries[query] = lq

    # 3: generate the bounds
    bounds : 'list[tuple[float,float]]' = []
    if method == "SLSQP":
        for bound in optimizable_facts.values():
            bounds.append((bound[0],bound[1]))
    else:
        # cobyla: convert bounds into constraints
        for k, v in optimizable_facts.items():
            constraints_list.append(f"P({k}) - {v[0]}")
            constraints_list.append(f"{v[1]} - P({k})")
    
    # 3.1: initial values for the parameters
    initial_guesses : 'list[float]' = [0.5]*len(optimizable_facts)
    
    # 4: generate the target equation and all the non linear constraints 
    # for the queries provided constraints of the form
    # P(q) - P(v) > 0
    # constraints : 'list[dict]' = []
    constraints = []
    # current_problem_list : 'list[Problem]' = []
    for idx, constr in enumerate([target_equation] + constraints_list):
        current_constr = constr
        for c_query, c_eq in constraints_from_queries.items():
            to_find = f"P({c_query})"
            if to_find in current_constr:
                current_constr = current_constr.replace(to_find, f"({c_eq})")

        for sv in optimizable_facts.keys():
            to_find = f"P({sv})"
            if to_find in current_constr:
                current_constr = current_constr.replace(to_find, f"({sv})")
        
        # add the constraint
        if idx == 0:
            # this is the target equation
            # print(f"Target equation: {current_constr}")
            problem_to_solve = Problem(current_constr, optimizable_facts.keys())
        else:
            # print(f"constraint: {current_constr}")
            current_problem = Problem(current_constr, optimizable_facts.keys())

            constraints.append({
                'type' : 'ineq',
                'fun' : current_problem.eval_fn,
                'jac' : current_problem.jac_fn    
            })
    
    start_time = time.time()
    if method == "SLSQP":
        res = minimize(
            problem_to_solve.eval_fn,
            initial_guesses,
            bounds=bounds,
            jac=problem_to_solve.jac_fn,
            method=method,
            options={'ftol': 1e-9},
            constraints=constraints
        )
    else:
        # COBYLA
        res = minimize(
            problem_to_solve.eval_fn,
            initial_guesses,
            method=method,
            constraints=constraints
        )
    opt_time = time.time() - start_time
    print(f"opt_time: {opt_time}")
    
    return res
