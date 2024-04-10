from itertools import combinations
import sys

from sympy import simplify
from sympy import sympify

# from a import compute_optimal_probability
from aspmc.programs.smprogram import SMProblogProgram
import aspmc.config as config
import time

import sys

import logging
logging.disable(level=logging.CRITICAL)

class Program:
    def __init__(self,
            learnable_facts : 'list[str]',
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

        # print(p)
        # print(n)

        return f"q{self.index} :- {p} {',' if len(p) > 0 else ''} {n}. "

def parse_facts(lines : 'list[str]') -> Program:
    learnable_facts : 'list[str]' = []
    interpretations_dict : 'dict[int,Interpretation]' = {}
    train_set : 'list[int]' = []
    test_set : 'list[int]' = []
    clauses : 'list[str]' = []
    for line in lines:
        if line.startswith("#learnable("):
            line = line.split("#learnable(")
            fact = line[1][:-3]
            learnable_facts.append(fact)
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
            line = line.split("#train(")[1][:-3]
            for idx in line.split(","):
                train_set.append(int(idx))
        elif line.startswith("#test("):
            line = line.split("#test(")[1][:-3]
            for idx in line.split(","):
                test_set.append(int(idx))
        else:
            if len(line) > 1 and not line.startswith("%"):
                clauses.append(line[:-1])
            
    return Program(learnable_facts, interpretations_dict, train_set, test_set, clauses)



def get_eq(
        program_str : str,
        learnable_facts : 'list[str]'
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
    program._decomposeGraph()
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
    eq_up = eq_up.replace('[0.]','0').replace('[1.]','1').replace('[','').replace(']','').replace('(1)*','').replace('*(1)','')

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
    slp = str(simplify(sympify(eq_lp)))
    sup = str(simplify(sympify(eq_up)))
    # print(slp)
    # print(sup)
    symp_time = time.time() - start_time
    print("Post simplification")
    print(f"symp_time: {symp_time}")
    # print(f"number of sums: {sup.count('+')}")
    print(f"number of sums: {slp.count('+')}")
    print(f"number of sub: {slp.count('-')}")
    print(f"number of prods: {slp.count('*')}")
    
    return slp, sup, keep_symbolic

def get_nice_eqs(prg : 'list[str]', prog.learnable_facts : 'list[str]') -> 'tuple[str,str]':
    """
    Extracts the eq from the list and then replace idx with variables names.
    """
    eq_lp, eq_up, symbolic_vars = get_eq("\n".join(prg), prog.learnable_facts)
    symbolic_vars = dict(sorted(symbolic_vars.items(), reverse = True))
    print(symbolic_vars)
    for k_nnf, name in symbolic_vars.items():
        eq_lp = eq_lp.replace(f"v_{k_nnf}",name)
        eq_up = eq_up.replace(f"v_{k_nnf}",name)
    return eq_lp, eq_up



def main():

    interpretation_eq_dict : 'dict[int,str]' = {}
    init_prob : float = 0.5 # initial probability for the learnable facts
    target : str = "upper"

    if len(sys.argv) < 2:
        print("Usage: python3 parameter_learning.py <filename>")

    # step 1: parse the program
    filename = sys.argv[1]
    fp = open(filename, "r")
    lines = fp.readlines()
    fp.close()

    prog = parse_facts(lines)

    prog.print_program()

    previous_ll_value : float = 0

    # step 2: compute the probability of the interpretations
    for idx in prog.interpretations_dict:
        interpretation = prog.interpretations_dict[idx]
        print(interpretation.get_interpretation_query())
        prg = prog.clauses[:]
        for lf in prog.learnable_facts:
            prg.append(f"{init_prob}::{lf}.")
        prg.append(interpretation.get_interpretation_query())
        prg.append(f"query({interpretation.get_interpretation_head()}).")

        # print(prg)
        # sys.exit()
        # get equations for the interpretations
        eq_lp, eq_up = get_nice_eqs(prg, prog.learnable_facts)
        if target == "upper":
            interpretation_eq_dict[idx] = eq_up
        else:
            interpretation_eq_dict[idx] = eq_lp

        print(eq_up)

    # step 3: setup the programs and queries
    # for pf in prog.learnable_facts:


   


    # res = compute_optimal_probability(
    #     program=program_str,
    #     query=query_list,
    #     optimizable_facts=optimizable_facts,
    #     method=method
    # )

    # print(res)

if __name__ == "__main__":
    main()