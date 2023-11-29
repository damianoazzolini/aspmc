import sys
import math
import itertools
import argparse
import random

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

if args.prob_facts < 5:
    n_prob_facts = 5

if pasta:
    asp_version = True

for i in range(1, n_prob_facts + 1):
    if asp_version:
        print("{" + f"person({i})" + "}.")
    else:
        print(f"0.4::person({i}).")

if asp_version:
    print("\nbuy(X):- reached(X), not not_buy(X). \nnot_buy(X):- reached(X), not buy(X).")
else:
    print("\nbuy(X):- reached(X), \+ not_buy(X). \nnot_buy(X):- reached(X), \+ buy(X).\
    \nquery(buy(1)).\n")

print("""
advertise(1,2):- person(1), person(2).
advertise(2,3):- person(2), person(3).
advertise(2,4):- person(2), person(4).
advertise(3,5):- person(3), person(5).
advertise(4,5):- person(4), person(5).

reach(A,B):- advertise(A,B).
reach(A,B):- advertise(A,C), reach(C,B).

reached(X):- person(X), reach(Y,X).
reached(X):- person(X), advertise(X,Y).
""")

for i in range(6, n_prob_facts + 1):
    a = random.randint(6,n_prob_facts)
    b = random.randint(6,n_prob_facts)
    print(f"advertise({a},{b}):- person({a}), person({b}).")
    
if pasta:
    print(":- #count{X:reached(X),buy(X)} = FB, #count{X:reached(X)} = B, 10*FB < "
        + f"{int(lb*10)}*B.")
else:
    # genero tutte le combinazioni di fatti prob
    already_gen : 'list[list[str]]' = []
    fbi_clauses_list : 'list[int]' = []

    for i in range(1, n_prob_facts + 1):
        # case i small_chikens, only lb
    
        fb = math.ceil(i * float(lb))
        print(f"% {i} person: not fb < {fb} b")
        # if fb not in already_gen:
        if fb > 0:
            # generate all the combinations
            comb = itertools.combinations(range(1, n_prob_facts + 1),i)
            lfb : 'list[str]' = []
            lbrd : 'list[str]' = []
            for c in comb:
                s_fb = f"fb{i}:- "
                s_b = f"b{i}:- "
                for el in c:
                    s_fb += f"buy({el}),"
                    s_b += f"reached({el}),"
                
                s_fb = s_fb[:-1] + '.'
                s_b = s_b[:-1] + '.'
                lfb.append(s_fb)
                lbrd.append(s_b)
            
            already_gen.append(lfb)
            if fb not in fbi_clauses_list:
                fbi_clauses_list.append(fb)
            
            # if i == fb:
            # for s in lfb:
            #     print(s)
            # print('\n')
            
            for s in lbrd:
                print(s)
            print('\n')
            
            if asp_version:
                print(f":- b{i}, not fb{fb}.")
            else:
                print(f":- b{i}, \+ fb{fb}.")
                
    for i in fbi_clauses_list:
        for cl in already_gen[i-1]:
            print(cl)
