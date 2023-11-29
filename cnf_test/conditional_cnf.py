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

l_vars : 'list[str]' = []
l_prog : 'list[str]' = []
cnf_prog : 'list[str]' = []

var_index_cnf_dict : "dict[str,int]" = {}

cnf_prog.append("c clausole f(i) -> b(i)")

for i in range(1, n_prob_facts + 1):
    # if asp_version:
    #     print("{" + f"b({i})" + "}.")
    # else:
    #     print(f"0.4::b({i}).")
    l_vars.append(f"b({i})")
    var_index_cnf_dict[f"b({i})"] = i

for i in range(1, n_prob_facts + 1):
    var_index_cnf_dict[f"f({i})"] = i + n_prob_facts
    cnf_prog.append(f"-{i + n_prob_facts} {i} 0")

# print(var_index_cnf_dict)
# print(cnf_prog)
# if asp_version:
#     print("\nfly(X):- bird(X), not not_fly(X). \nnot_fly(X):- bird(X), not fly(X).")
# else:
#     print("\nfly(X):- bird(X), \+ not_fly(X). \nnot_fly(X):- bird(X), \+ fly(X).\
#     \nquery(fly(1)).\n")

# if pasta:
#     print(":- #count{X:fly(X),bird(X)} = FB, #count{X:bird(X)} = B, 10*FB < "
#           + f"{int(lb*10)}*B.")
# else:
# genero tutte le combinazioni di fatti prob
already_gen: 'list[list[str]]' = []
fbi_clauses_list: 'list[int]' = []

for i in range(1, n_prob_facts + 1):
    # case i birds, only lb

    fb = math.ceil(i * float(lb))
    cnf_prog.append(f"c % {i} birds: not fb < {fb} b")
    # if fb not in already_gen:
    if fb > 0:
        # generate all the combinations
        comb = itertools.combinations(range(1, n_prob_facts + 1), i)
        lfb: 'list[str]' = []
        lbrd: 'list[str]' = []
        for c in comb:
            s_fb = f"fb{i}:- "
            s_b = f"b{i}:- "
            l_vars.append(f"fb({i})")
            l_vars.append(f"b({i})")
            for el in c:
                s_fb += f"f({el}),"
                s_b += f"b({el}),"
                l_vars.append(f"f({el})")
                l_vars.append(f"b({el})")

            s_fb = s_fb[:-1] + '.'
            s_b = s_b[:-1] + '.'
            lfb.append(s_fb)
            lbrd.append(s_b)
            
            
            # print(s_fb)
            # print(s_b)
                        
            # sys.exit()

        already_gen.append(lfb)
        if fb not in fbi_clauses_list:
            fbi_clauses_list.append(fb)

        # if i == fb:
        # for s in lfb:
        #     print(s)
        # print('\n')

        # for s in lbrd:
        #     print(s)
        #     l_prog.append(s)
        # print('\n')
        # print(lbrd)
        cnf_prog.append("c clausole per bird")
        for s in lbrd:
            cnf_prog.append(f"c {s}")
            splitted = s.split(':-')
            head = splitted[0]
            body = splitted[1].split(',')
            l_prog.append(s)
            # print(head)
            # print(body)
            ct = ""
            for el in body:
                # print(el)
                if el.endswith('.'):
                    el1 = el[:-1].replace(' ','')
                else:
                    el1 = el.replace(' ', '')
                ct += f"-{var_index_cnf_dict[el1]} "
            if head not in var_index_cnf_dict:
                var_index_cnf_dict[head] = len(var_index_cnf_dict.keys()) + 1
            ct += f"{var_index_cnf_dict[head]} 0"
            cnf_prog.append(ct)

        # if asp_version:
        #     print(f":- b{i}, not fb{fb}.")
        # else:
        #     print(f":- b{i}, \+ fb{fb}.")
        l_prog.append(f":- b{i}, \+ fb{fb}.")
        
        cnf_prog.append("c clausole per vincolo")
        cnf_prog.append(f"c :- b{i}, \+ fb{fb}.")
        
        if f"b{i}" in var_index_cnf_dict:
            vbi = var_index_cnf_dict[f"b{i}"]
        else:
            var_index_cnf_dict[f"b{i}"] = len(var_index_cnf_dict.keys()) + 1
            vbi = var_index_cnf_dict[f"b{i}"]
        
        if f"fb{fb}" in var_index_cnf_dict:
            vfb = var_index_cnf_dict[f"fb{fb}"]
        else:
            var_index_cnf_dict[f"fb{fb}"] = len(var_index_cnf_dict.keys()) + 1
            vfb = var_index_cnf_dict[f"fb{fb}"]
        
        
        cnf_prog.append(f"-{vbi} {vfb} 0")
        
# for i in fbi_clauses_list:
#     for cl in already_gen[i-1]:
#         print(cl)
# index = 1
# for el in var_index_cnf_dict:
#     cnf_prog.insert(0, f"c {el} {index} 0")
#     index += 1
# for c in cnf_prog:
#     print(c)
# sys.exit()
        
head_body_dict : dict[str,str] = {}

index_in = 0
for i in fbi_clauses_list:
    body = ""
    cnf_prog.append(f"c clausole per fbi: {already_gen[i-1]}")
    for cl in already_gen[i-1]:
        # print(f"---- {cl}")
        # head = cl.split(':-')[0].replace(' ','')
        # vh = var_index_cnf_dict[head]
        
        vb = []
        # k = f"fb{i}"
        # s = f"- {var_index_cnf_dict[k]}"
        # print(cl)
        body = cl.split(':-')[1].replace('.','').replace(' ','').split(',')
        # print(body)
        s = ""
        for atom in body:
            k = var_index_cnf_dict[atom]
            s += f"{k} "
        # s += f"{vh} 0"
        # cnf_prog.append(s)
        
        # aggiuyngo variabile per la combinazione di fatti prob
        current_clause = f"f{i}{index_in}"
        var_index_cnf_dict[current_clause] = len(var_index_cnf_dict.keys())+ 1
        s = f"-{var_index_cnf_dict[current_clause]} " + s + ' 0'
        cnf_prog.append(s)
        
        print(f"f{i}{index_in} -> {body} {s}")
        index_in += 1
        # l_prog.append(cl)
    st = f"fb{i} -> "
    current_index = f"fb{i}"
    scl = f"-{var_index_cnf_dict[current_index]} "
    for l in range(index_in):
        index_in = f"f{i}{l}"
        st += f"f{i}{l} "
        scl += f"{var_index_cnf_dict[index_in]} "
    scl += '0'
    cnf_prog.append(scl)
    print(st)
    print(scl)
    # print(body)

# sys.exit()
# print(cnf_prog)

quantify_list : 'list[str]' = []
index = 1
for el in var_index_cnf_dict:
    if el.startswith("b("):
        # probabilistic
        cnf_prog.append(f"c p weight {index} 0.4 0")
        cnf_prog.append(f"c p weight -{index} 0.6 0")
        quantify_list.append(str(index))
    else:
        cnf_prog.append(f"c p weight {index} (1.0,1.0) 0")
        cnf_prog.append(f"c p weight -{index} (1.0,1.0) 0")
    index += 1
    
index = 1
for el in var_index_cnf_dict:
    cnf_prog.insert(0,f"c {el} {index} 0")
    index += 1
    
cnf_prog.append("c p semirings aspmc.semirings.probabilistic aspmc.semirings.two_nat 0")
cnf_prog.append("c p transform lambda w : int(w[0] == w[1]) 0")
cnf_prog.append(f"c p quantify {' '.join(quantify_list)} 0")
cnf_prog.append("c p quantify 0")

total_clauses = 0
for c in cnf_prog:
    if not c.startswith('c'):
        total_clauses += 1

cnf_prog.insert(0,f"p cnf {len(var_index_cnf_dict.keys())} {total_clauses}")

# print("----- CNF ----")
for c in cnf_prog:
    print(c)
    
print(var_index_cnf_dict)
