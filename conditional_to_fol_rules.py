import sys
import math
import itertools
import argparse


command_parser = argparse.ArgumentParser()
command_parser.add_argument("prob_facts", help="Number of probabilistic facts",
    type=int)
command_parser.add_argument("lb", help="Lower bound", type=float)
command_parser.add_argument("ub", help="Upper bound", type=float, default=1.0)
command_parser.add_argument("--asp", help="Probabilistic facts as\
    ASP choice rules", action="store_true", default=False)
command_parser.add_argument("--pasta", help="Print conditional", action="store_true", 
    default=False)

args = command_parser.parse_args()

n_prob_facts = args.prob_facts
lb = args.lb
ub = args.ub
asp_version = args.asp
pasta = args.pasta

if pasta:
    asp_version = True

for i in range(1, n_prob_facts + 1):
    if asp_version:
        print("{" + f"bird({i})" + "}.")
    else:
        print(f"0.4::bird({i}).")

if asp_version:
    print("\nfly(X):- bird(X), not not_fly(X). \nnot_fly(X):- bird(X), not fly(X).")
else:
    print("\nfly(X):- bird(X), \+ not_fly(X). \nnot_fly(X):- bird(X), \+ fly(X).\
    \nquery(fly(1)).\n")

if pasta:
    print(":- #count{X:fly(X),bird(X)} = FB, #count{X:bird(X)} = B, 10*FB < "
        + f"{int(lb*10)}*B.")
else:
    # genero tutte le combinazioni di fatti prob
    already_gen : 'list[list[str]]' = []
    fbi_clauses_list : 'list[int]' = []
    
    # fb = math.ceil(i * float(lb))
    # genero i bird
    for i in range(1, n_prob_facts + 1):
        s = f"b{i}:- "
        for j in range(1, i + 1):
            s += f"bird(A{j}),"
        for j in range(1, i):
            s += f"A{j} < A{j+1},"
        s = s[:-1] + '.'

        print(s)
    
    print('')
    # genero i fly bird
    max_fb = math.ceil(n_prob_facts * float(lb))
    for i in range(1, max_fb + 1):
        s = f"fb{i}:- "
        for j in range(1, i + 1):
            s += f"fly(A{j}),"
        for j in range(1, i):
            s += f"A{j} < A{j+1},"
        s = s[:-1] + '.'

        print(s)
        
    print('')
    # genero i vincoli
    for i in range(1, n_prob_facts + 1):
        s = f":- b{i}, \+ fb{math.ceil(i * float(lb))}."

        print(s)
    
    # for i in range(1, n_prob_facts + 1):
    #     # case i birds, only lb
        
    
    #     print(f"% {i} birds: not fb < {fb} b")
    #     # if fb not in already_gen:
    #     if fb > 0:
    #         # generate all the combinations
    #         lfb : 'list[str]' = []
    #         lbrd : 'list[str]' = []
    #         s_fb = f"fb{i}:- "
    #         s_b = f"b{i}:- "
    #         for c in range(1, n_prob_facts + 1):
    #             s_fb += f"fly(A{c}),"
    #             s_b += f"bird({c}),"
                
    #             s_fb = s_fb[:-1] + '.'
    #             s_b = s_b[:-1] + '.'
    #             lfb.append(s_fb)
    #             lbrd.append(s_b)
            
    #         already_gen.append(lfb)
    #         if fb not in fbi_clauses_list:
    #             fbi_clauses_list.append(fb)
            
    #         # if i == fb:
    #         # for s in lfb:
    #         #     print(s)
    #         # print('\n')
            
    #         for s in lbrd:
    #             print(s)
    #         print('\n')
            
    #         if asp_version:
    #             print(f":- b{i}, not fb{fb}.")
    #         else:
    #             print(f":- b{i}, \+ fb{fb}.")
                
    # for i in fbi_clauses_list:
    #     for cl in already_gen[i-1]:
    #         print(cl)
