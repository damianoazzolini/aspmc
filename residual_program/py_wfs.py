from swiplserver import PrologMQI, PrologThread

import argparse
import logging
import sys

import aspmc.config as config

import time
import subprocess


# logging.disable(level=logging.CRITICAL)
config.config["decos"] = "flow-cutter"
config.config["decot"] = "-1"

# from aspmc.programs.credalprogram import CredalProgram
# import aspmc.semirings.credal as semiring

from aspmc.programs.smprogram import SMProblogProgram

import janus_swi as janus

wfs_program = """
get_residual_program(Query,Res):-
    findall(CEF,
        (call_residual_program(Query,P),
        maplist(unqualify_clause, P, Clauses),
        maplist(explode_body,Clauses,ClausesExploded),
        % maplist(flat_out,ClausesExploded,CEF)
        flatten(ClausesExploded,CEF)
        ), CExp),
        % writeln(CExp),
        % maplist(pretty_print,CExp).
        maplist(pretty_string,CExp,SList),
        to_string_outer(SList,[],Res).
        % maplist(writeln,Res).
        % maplist(maplist(writeln),SList).

to_string_outer([],L,L).
to_string_outer([HS|TS],STemp,SO):-
    maplist(term_string,HS,Strings),
    append(STemp,Strings,STemp1),
    to_string_outer(TS,STemp1,SO).

my_string((A,B),[A,B]).
my_string(G,G).
pretty_string(L,SFF):-
    maplist(my_string,L,SF),
    flatten(SF,SFF), !.

my_writeln((A,B)):- writeln(A), writeln(B).
my_writeln(G):- writeln(G).
pretty_print(L):-
    maplist(my_writeln,L), !.

compose(H,B,(H:-B)).
explode_body((H :- B), R):-
    ( is_list(B) ->
        maplist(compose(H),B,R) ;
        R = (H :- B)
    ).

unqualify_clause((Head0 :- Body0), (Head :- Body)) :-
    unqualify(Head0, Head),
    unqualify(Body0, Body).


unqualify((A0;B0), G) :-
    !,
    % G = (A;B),
    % G = [A,B],
    unqualify(A0, A),
    unqualify(B0, B),
    flatten(A,LAF),
    flatten(B,LBF),
    append(LAF,LBF,G).
    % writeln(LAF),
    % writeln(LBF),
    % writeln(G).
unqualify((A0,B0), G) :-
    !,
    G = (A,B),
    unqualify(A0, A),
    unqualify(B0, B).
unqualify(tnot(A0), G) :-
    !,
    G = tnot(A),
    unqualify(A0, A).
unqualify(G, G).

"""


def aspmc_query(program):
    config.config["knowledge_compiler"] = "c2d"
    config.config["constrained"] = "XD"
    program = SMProblogProgram(program, [])
    # program = CredalProgram("", ["./test/test_credal_small.lp"])
    program.tpUnfold()
    program.td_guided_both_clark_completion()
    cnf = program.get_cnf()
    results = cnf.evaluate()
    return results


def find_all_subs(s: str, subs : str) -> 'list[int]':
    '''
    Find all indexes of the substring subs in the string s
    '''
    found : 'list[int]' = []
    pos = s.find(subs)
    while pos != -1:
        found.append(pos)
        pos = s.find(subs, pos + 1)
    return found


def clean_clause(clause : str) -> str:
    """
    replaces tnot(a) with not a and adds a full stop at the end of 
    the string.
    """
    if "tnot" in clause:
        all_tnot_pos = find_all_subs(clause, "tnot")
        # print(all_tnot_pos)
        new_s = clause

        for p in all_tnot_pos:
            # print(clause[p])
            open_brackets = 0
            end_pos = -1
            to_find = "tnot"
            for i in range(p + 4, len(clause)):
                to_find += clause[i]
                if clause[i] == "(":
                    open_brackets += 1
                elif clause[i] == ")":
                    open_brackets -= 1
                if open_brackets == 0:
                    end_pos = i
                    break
            # print(f"to find: {to_find}")
            # s = s[p:end_pos]
            new_s = new_s.replace(to_find,f"\+ {clause[p+5:end_pos]} ")
    else: new_s = clause

    return new_s + "."


def is_line_for_prob_fact(line : str, terms_prob_dict : 'dict[str,float]') -> 'tuple[str,float]':
    line = line.replace("\n","")
    for el in terms_prob_dict:
        if line == f"{el}:-tnot(n{el})" or line == f"n{el}:-tnot({el})":
            return (el, terms_prob_dict[el])
    return ("", -1)

def main_only_aspmc(filename : str, query : str, generate : bool):
    fp = open(filename, "r")
    lines = fp.readlines()
    fp.close()
    asp_program : 'list[str]' = [f"query({query}).\n"]
    
    for line in lines:
        if not line.startswith(':-'):
            asp_program.append(line)
    
    if generate:
        fp = open(f"{filename}.converted", "w")
        for el in asp_program:
            fp.write(el)
        fp.close()
    else:
        res = aspmc_query('\n'.join(asp_program))
        print(res)


def aspmc_via_subprocess(asp_program : 'list[str]'):
    program_file = "aspmc_program.tmp" 
    fp = open(program_file, "w")
    for l in asp_program:
        fp.write(l + "\n")
    fp.write("\nquery(q).\n")
    start_time = time.time()
    out_aspmc = subprocess.check_output([
        "time","aspmc","-m","smproblog",program_file,"-c","-k","c2d" 
    ],text=True)
    end_time = time.time()
    print(out_aspmc)
    print(f"Elapsed aspmc: {end_time - start_time}")
    # residual_program = out_aspmc.split("\n")
    # print(residual_program)
    

def main_relevant_program(filename : str, query : str, generate : bool):
    terms_prob_dict : 'dict[str,float]' = {}
    program_for_prolog : 'list[str]' = []

    # fp = open("pasp_program.pl", "r")
    fp = open(filename, "r")
    lines = fp.readlines()
    fp.close()

    # print(lines)
    
    # convert probabilistic facts
    for line in lines:
        if "::" in line:
            prob = float(line.split("::")[0])
            term = line.split("::")[1].replace("\n","")[:-1] # to remove .
            terms_prob_dict[term] = prob
            program_for_prolog.append(f"{term} :- tnot(n{term}).")
            program_for_prolog.append(f"n{term} :- tnot({term}).")
            arity = term.count(',') + term.count('(') # quick and dirty
            to_table = term.split('(')[0]
            tab_directive = f":- table {to_table}/{arity}."
            if tab_directive not in program_for_prolog:
                program_for_prolog.append(tab_directive) # quick test
            
            tab_directive = f":- table n{to_table}/{arity}."
            if tab_directive not in program_for_prolog:
                program_for_prolog.append(tab_directive)
        else:
            if len(line) > 1 and not line.startswith("%"):
                program_for_prolog.append(line.replace("\n",""))

    # print(terms_prob_dict)

    # create temporary files
    tmp_program_filename = "program.pl.tmp"
    fp = open(tmp_program_filename, "w")
    for el in program_for_prolog:
        fp.write(el + "\n")
        # print(el)
    fp.close()
    
    tmp_program_filename_wfs = "wfs.pl.tmp"
    fp = open(tmp_program_filename_wfs, "w")
    fp.write(wfs_program)
    fp.close()

    # sys.exit()

    print("Computing residual program")
    
    start_time = time.time()
    # with janus - ok but not on coka
    janus.consult(tmp_program_filename)
    janus.consult(tmp_program_filename_wfs)
    # query_result = janus.query_once(f"consult(\"{tmp_program_filename}\"),consult(\"{tmp_program_filename_wfs},get_residual_program({query},Residual)")
    query_result = janus.query_once(f"get_residual_program({query},Residual)")
    end_time = time.time()
    print(f"Elapsed relevant program: {end_time - start_time}")

    residual_program = query_result["Residual"]
    
    # import subprocess
    # out_swi = subprocess.check_output([
    #     "swipl",
    #     "-g", 
    #     f"consult(\"{tmp_program_filename}\"),consult(\"{tmp_program_filename_wfs}\"),get_residual_program({query},Residual),maplist(writeln,Residual)",
    #     "-t",
    #     "halt"
    # ],text=True)
    # # print(out_swi)
    # residual_program = out_swi.split("\n")
    # # print(residual_program)

    # sys.exit()

    # with PrologMQI() as mqi:
    #     with mqi.create_thread() as prolog_thread:
    #         # result = prolog_thread.query(f"consult(\"program.pl\").")
    #         result = prolog_thread.query(f"consult(\"{tmp_program_filename}\").")
    #         # for el in program_for_prolog:
    #         #     print(f"asserting {el}")
    #         #     prolog_thread.query(f"assert(({el})).")

    #         result = prolog_thread.query(f"consult(\"{tmp_program_filename_wfs}\").")
    #         result = prolog_thread.query(f"get_residual_program({query},Residual)")
    #         residual_program = result[0]["Residual"]
    #         # print("Residual program")

    residual_program.sort()
    # print(residual_program)
    # print(residual_program)
    # sys.exit()
    # sys.exit()
    # program = '\n'.join(residual_program + ["#\nquery(q).\n"])
    asp_program : 'list[str]' = [f"query({query}).\n"]

    # replace rules for prob facts with prob facts
    for el in residual_program:
        if not el.startswith(":-") and len(el) > 1:
            # print(f"Analysing: {el}")
            term, prob = is_line_for_prob_fact(el, terms_prob_dict)
            if len(term) > 0:
                prob_fact = f"{prob}::{term}."
                if prob_fact not in asp_program:
                    asp_program.append(prob_fact)
            else:
                asp_program.append(clean_clause(el))
    
    if generate:
        fp = open(f"{filename}.converted", "w")
        for el in asp_program:
            fp.write(el + "\n")
        fp.close()
    else:
        print("Running aspmc")
        res = aspmc_query('\n'.join(asp_program))
        print(res)

def dispatch():
    command_parser = argparse.ArgumentParser(
        description="Relevant program extraction"
    )

    command_parser.add_argument(
        "filename",
        help="Filename",
        type=str
    )

    command_parser.add_argument(
        "query",
        help="Query",
        type=str
    )
    
    command_parser.add_argument(
        "--relevant",
        help="Choose relevant program computation (ON/OFF)",
        type=str,
        choices=["ON","OFF"],
        required=True
    )

    command_parser.add_argument(
        "--generate",
        help="Only generates the program",
        action="store_true"
    )

    command_parser.add_argument(
        "--verbosity",
        help="Verbosity level",
        type=str,
        choices=["DEBUG","INFO","WARNING","ERROR","CRITICAL"],
        default="CRITICAL"
    )

    arguments = command_parser.parse_args()

    if arguments.verbosity == "DEBUG":
        logging.disable(level=logging.DEBUG)
    elif arguments.verbosity == "INFO":
        logging.disable(level=logging.INFO)
    elif arguments.verbosity == "WARNING":
        logging.disable(level=logging.WARNING)
    elif arguments.verbosity == "ERROR":
        logging.disable(level=logging.ERROR)
    elif arguments.verbosity == "CRITICAL":
        logging.disable(level=logging.CRITICAL)

    if arguments.relevant == "ON":
        main_relevant_program(arguments.filename, arguments.query, arguments.generate)
    elif arguments.relevant == "OFF":
        main_only_aspmc(arguments.filename, arguments.query, arguments.generate)


if __name__ == "__main__":
    dispatch()