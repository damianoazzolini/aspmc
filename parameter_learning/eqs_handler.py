import time
import math
import random

from sympy import diff
from sympy import simplify
from sympy import sympify

from aspmc.programs.smprogram import SMProblogProgram
import aspmc.config as config


import logging
logging.disable(level=logging.CRITICAL)


class Program:
    def __init__(self,
            learnable_facts : 'dict[str,float]',
            interpretations_dict : 'dict[int,Interpretation]',
            train_set : 'list[int]',
            test_set : 'list[int]',
            clauses : 'list[str]'
        ) -> None:
            self.learnable_facts = learnable_facts
            self.interpretations_dict : 'dict[int,Interpretation]' = interpretations_dict
            self.train_set = train_set
            self.test_set = test_set
            self.clauses = clauses
        
    def print_program(self):
        print(self.learnable_facts)
        for i in self.interpretations_dict:
            print(self.interpretations_dict[i].get_interpretation_query())
        print(self.train_set)
        print(self.test_set)
        print(self.clauses)



class Interpretation:
    def __init__(self, index : int) -> None:
        self.index : int = index
        self.pos : 'list[str]' = []
        self.neg : 'list[str]'= []
    
    def add_positive_atom(self, at : str):
        self.pos.append(at)
    def add_negative_atom(self, at : str):
        self.neg.append(at)
    
    def get_interpretation_head(self) -> str:
        return f"q{self.index}"

    def get_interpretation_query(self) -> str:
        # print("pos")
        # print(self.pos)
        # print("neg")
        # print(self.neg)
        p = ""
        for ps in self.pos:
            p = p + ps + ","
        p = p[:-1]
        
        n = ""
        for ns in self.neg:
            n = n + ",\+ " + ns
        n = n[1:]

        rule = f"q{self.index} :- {p} {',' if (len(n) > 0 and len(p) > 0) else ''} {n}. "
        return rule
    


def parse_facts(lines : 'list[str]', init_prob : float) -> Program:
    learnable_facts : 'dict[str,float]' = {}
    interpretations_dict : 'dict[int,Interpretation]' = {}
    train_set : 'list[int]' = []
    test_set : 'list[int]' = []
    clauses : 'list[str]' = []
    for line in lines:
        line = line.rstrip().replace("\n","")
        if line.startswith("#learnable("):
            line = line.split("#learnable(")
            fact = line[1][:-2]
            if init_prob == -1:
                learnable_facts[fact] = random.random()
            else:
                learnable_facts[fact] = init_prob
        elif line.startswith("#positive("):
            line = line.split("#positive(")[1].replace("\n","")
            sep = line.find(",")
            idx = int(line[:sep])
            at = line[sep + 1 : -2]
            if idx not in interpretations_dict:
                interpretations_dict[idx] = Interpretation(idx)
            interpretations_dict[idx].add_positive_atom(at)
        elif line.startswith("#negative("):
            line = line.split("#negative(")[1].replace("\n","")
            sep = line.find(",")
            idx = int(line[:sep])
            at = line[sep + 1 : -2]
            if idx not in interpretations_dict:
                interpretations_dict[idx] = Interpretation(idx)
            interpretations_dict[idx].add_negative_atom(at)
        elif line.startswith("#train("):
            line = line.split("#train(")[1][:-2]
            for idx in line.split(","):
                train_set.append(int(idx))
        elif line.startswith("#test("):
            line = line.split("#test(")[1][:-2]
            for idx in line.split(","):
                test_set.append(int(idx))
        else:
            if len(line) > 1 and not line.startswith("%"):
                clauses.append(line)
    return Program(learnable_facts, interpretations_dict, train_set, test_set, clauses)


def my_log(x):
    if x <= 0:
        return 0.001
    return math.log(x)

def get_equations(
        program_str : 'str',
        learnable_facts : 'list[str]',
        target : 'str',
        simplify_eqs : bool,
        opt_mode : bool # True if opt is selected, false if EM
    ):
    '''
    Extracts the eq from the program for the given query
    '''

    config.config["knowledge_compiler"] = "c2d"

    program_files = []
    strategy = "flexible"
    preprocessing = False
    
    start_time = time.time()
    
    program = SMProblogProgram(program_str, program_files)
    # program._decomposeGraph()
    program.tpUnfold()
    program.td_guided_both_clark_completion(adaptive=False, latest=False)
    cnf = program.get_cnf()
    # print(program.get_weights())
    # print(program._nameMap)

    keep_symbolic : 'dict[int,str]' = {}
    for el in program._nameMap:
        if program._nameMap[el] in learnable_facts:
            keep_symbolic[el] = program._nameMap[el]

    # added to keep track of the variables
    cnf.mapping_id_val = keep_symbolic

    results = cnf.evaluate(strategy = strategy, preprocessing = preprocessing)
    # al posto di evaluate potrei usare solve_compilation_two e fare il caching
    # se mi salvo il DDNNF posso usare usare parse_wmc per leggere non dal file ma
    # dal DDNNF salvato

    eq_extract_time = time.time() - start_time
    print(f"Extract time: {eq_extract_time} seconds")
    
    eqs_lp = results[3]
    eqs_up = results[4]
    # for v in eqs_up:
    #     # print(f"-> ({len(v)}): {v}")
    #     print(f"-> ({len(v)})")
    
    eq_lp_list : 'list[str]' = []
    eq_up_list : 'list[str]' = []
    start_time = time.time()
    for eq_l, eq_u in zip(eqs_lp,eqs_up):
        if opt_mode:
            if target == "lower":
                if simplify_eqs:
                    eq_lp_list.append(str(simplify(sympify(eq_l))))
                else:
                    eq_lp_list.append(str(sympify(eq_l)))
            else:
                if simplify_eqs:
                    eq_up_list.append(str(simplify(sympify(eq_u))))
                else:
                    eq_up_list.append(str(sympify(eq_u)))
        else: # for EM I need both equations
            if simplify_eqs:
                eq_lp_list.append(str(simplify(sympify(eq_l))))
                eq_up_list.append(str(simplify(sympify(eq_u))))
            else:
                eq_lp_list.append(str(sympify(eq_l)))
                eq_up_list.append(str(sympify(eq_u)))
    simpl_time = time.time() - start_time
    print(f"Simplification time: {simpl_time} seconds")
    return eq_lp_list, eq_up_list, keep_symbolic

def get_nice_eqs(
        prg : 'list[str]',
        learnable_facts : 'list[str]',
        target : str,
        simplify_eqs : bool,
        opt_mode : bool
    ) -> 'tuple[list[str],list[str]]':
    """
    Extracts the eqs from the queries and then replace idx with variables names.
    """
    eq_lp_list, eq_up_list, symbolic_vars = get_equations("\n".join(prg), learnable_facts, target, simplify_eqs, opt_mode)
    # check same length
    # if len(eq_lp_list) != len(eq_up_list):
    #     print("--- Error in get equations, different length ---")
    #     sys.exit()
    
    symbolic_vars = dict(sorted(symbolic_vars.items(), reverse = True))
    # print(symbolic_vars)
    # print(len(eq_lp_list),len(eq_up_list))
    len_list = max(len(eq_lp_list),len(eq_up_list))
    for k_nnf, name in symbolic_vars.items():
        for idx in range(0, len_list):
            if opt_mode:
                if target == "lower":
                    eq_lp_list[idx] = eq_lp_list[idx].replace(f"v_{k_nnf}",name)
                else:
                    eq_up_list[idx] = eq_up_list[idx].replace(f"v_{k_nnf}",name)
            else: # EM I need both
                eq_lp_list[idx] = eq_lp_list[idx].replace(f"v_{k_nnf}",name)
                eq_up_list[idx] = eq_up_list[idx].replace(f"v_{k_nnf}",name)

    return eq_lp_list, eq_up_list

def evaluate_eq(eq : str, var_prob_to_replace : 'dict[str,float]') -> float:
    """
    Evaluates a probability eq by replacing current values.
    """
    for v in var_prob_to_replace: # <----- var names must be disjoint
        if v in eq:
            eq = eq.replace(v,str(var_prob_to_replace[v]))
    return eval(eq)