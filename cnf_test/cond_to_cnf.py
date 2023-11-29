import sys
import math
import itertools
import argparse


def expected(
    lb : float, ub : float, n_prob_facts : int, prob : float) -> 'tuple[float,float]':
    '''
    If lb > 0 and ub = 1: upperprob = q, lowerprob $n_a = \lceil lb \cdot n_a \rceil$
    If lb = 0 and ub < 1: upperprob ub*na \geq 1, lowerprob = 0
    '''
    if lb > 0 and ub < 1:
        print("No credal semantics for lb > 0 and ub < 1.")
        sys.exit()
    
    up = 0
    lp = 0
    if lb > 0 and ub == 1:
        up = prob
        for k in range(0, n_prob_facts):
            if k + 1 == math.ceil(lb * (k+1)):
                p = (prob**k) * ((1 - prob)**(n_prob_facts - 1 - k))
                lp += math.comb(n_prob_facts - 1, k) * p 
        lp = lp * prob
    else:
        lp = 0
        for k in range(0, n_prob_facts):
            if ub*(k + 1) >= 1:
                p = (prob**k) * ((1 - prob)**(n_prob_facts - 1 - k))
                up += math.comb(n_prob_facts - 1, k) * p 
        up = up * prob

    return lp, up


def generate_clauses(
    end_loop : int,
    n_prob_facts: int,
    var_index_cnf_list : 'list[str]',
    cnf_prog : 'list[str]',
    b_of_fb : str
    ) -> None:
    for i in range(1, end_loop + 1):
        combinations_i = list(itertools.combinations(range(1, n_prob_facts + 1), i))
        cnf_prog.append(f"c combinazioni {i} fly")
        # print(f"c combinazioni {i} fly")
        # print(combinations_i)
        if b_of_fb == 'b':
            var_index_cnf_list.append(f"b{i}")
        else:
            var_index_cnf_list.append(f"fb{i}")
            
        # print(f"fb{i} = {len(var_index_cnf_list)}")
        cnf_prog.append(f"c {combinations_i}")
        aux_vars: list[str] = []
        for c in combinations_i:
            # genero le variabili ausiliare fijk che rappresentano le combinazioni di fly
            indexes_list = [str(v) for v in list(c)]
            indexes_join = ''.join(indexes_list)
            # print(indexes_join) # fijk...
            if b_of_fb == "b":
                new_element = f"b{i}{indexes_join}"
            else:
                new_element = f"f{i}{indexes_join}"
            var_index_cnf_list.append(new_element)
            # print(f"{new_element} = {len(var_index_cnf_list)}")
            # print(new_element)
            aux_vars.append(new_element)
            s = ""
            # qui devo aggiungere una nuova variabile f{tutti gli indici}
            # versione 1
            # for index, element in enumerate(c):
            #     s += str(var_index_cnf_list.index(f"f({element})") + 1) + " "
            # index_bi = var_index_cnf_list.index(f"{new_element}") + 1
            # current_clause = f"{s} -{index_bi} 0"
            # cnf_prog.append(current_clause)

            for index, element in enumerate(c):
                if b_of_fb == 'b':
                    ind = str(var_index_cnf_list.index(f"b({element})") + 1)
                else:
                    ind = str(var_index_cnf_list.index(f"f({element})") + 1)
                index_bi = var_index_cnf_list.index(f"{new_element}") + 1
                current_clause = f"{ind} -{index_bi} 0"
                cnf_prog.append(current_clause)

            # print(current_clause)
        # genero la clausola fbi -> fijk v fijl v ...
        if b_of_fb == 'b':
            index_fbi = var_index_cnf_list.index(f"b{i}") + 1
        else:
            index_fbi = var_index_cnf_list.index(f"fb{i}") + 1
        s = f"-{index_fbi} "
        for a in aux_vars:
            s += str(var_index_cnf_list.index(f"{a}") + 1) + " "
        s += '0'
        # print(s)
        cnf_prog.append(s)



def main(n_prob_facts : int, lb : float, ub : float):
    cnf_prog : 'list[str]' = []
    var_index_cnf_list : "list[str]" = []

    cnf_prog.append("c clausole f(i) -> b(i) --> -f(i) b(i) 0")
    indexes_to_quantify : 'list[int]' = []

    for i in range(1, n_prob_facts + 1):
        var_index_cnf_list.append(f"b({i})")
        indexes_to_quantify.append(len(var_index_cnf_list))
        var_index_cnf_list.append(f"f({i})")
        cnf_prog.append(f"-{len(var_index_cnf_list)} {len(var_index_cnf_list) - 1} 0")

    # print(cnf_prog)

    # --- commento e aggiungo generate clauses
    # genero tutte le combinazioni di bird
    # l_indexes = list(range(1, n_prob_facts + 1))
    for i in range(1, n_prob_facts + 1):
        combinations_i = list(itertools.combinations(range(1,n_prob_facts + 1), i))
        cnf_prog.append(f"c combinazioni {i} fatti prob")
        # print(f"c combinazioni {i} fatti prob")
        # print(combinations_i)
        # aggiungo variabile bi
        var_index_cnf_list.append(f"b{i}")
        # print(f"b{i} = {len(var_index_cnf_list)}")
        cnf_prog.append(f"c {combinations_i}")
        for c in combinations_i:
            # aggiungo b(1), ..., b(k) -> bi
            cnf_prog.append("c b(1), ..., b(k) -> bi --> -b(1) ... -b(k) bi 0")
            s = ""
            for index, element in enumerate(c):
                s += "-" + str(var_index_cnf_list.index(f"b({element})") + 1) + " "
            index_bi = var_index_cnf_list.index(f"b{i}") + 1
            current_clause = f"{s} {index_bi} 0"
            # print(current_clause)
            cnf_prog.append(current_clause)
    # -----
    # generate_clauses(n_prob_facts, n_prob_facts, var_index_cnf_list, cnf_prog, "b")

    # estraggo l'ultimo lfb
    lfb : 'list[int]' = []
    for i in range(1, n_prob_facts + 1):
        # case i birds, only lb
        fb = math.ceil(i * float(lb))
        # cnf_prog.append(f"c % {i} birds: not fb < {fb} b")
        lfb.append(fb)

    # print(lfb)
    last_lfb = max(lfb)

    generate_clauses(last_lfb, n_prob_facts, var_index_cnf_list, cnf_prog, "fb")
    

    cnf_prog.insert(0,f"c last LFB: {last_lfb}")

    # inserisco i vincoli    
    for i in range(1, n_prob_facts + 1):
        # case i birds, only lb
        fb = math.ceil(i * float(lb))
        cnf_prog.append(f"c % {i} birds: not fb < {fb} b")
        bi_index = var_index_cnf_list.index(f"b{i}")
        fbi_index = var_index_cnf_list.index(f"fb{fb}")
        cnf_prog.append(f"-{bi_index + 1} {fbi_index + 1} 0")


    for index, el in enumerate(var_index_cnf_list):
        if (index + 1) in indexes_to_quantify:
            # probabilistic
            cnf_prog.append(f"c p weight {index + 1} 0.4 0")
            cnf_prog.append(f"c p weight -{index + 1} 0.6 0")
        else:
            cnf_prog.append(f"c p weight {index + 1} (1.0,1.0) 0")
            if index + 1 == 2:
                # perché query f(1)
                cnf_prog.append(f"c p weight -{index + 1} (0,1.0) 0")
            else:
                cnf_prog.append(f"c p weight -{index + 1} (1.0,1.0) 0")
        
    index = 1
    for el in var_index_cnf_list:
        cnf_prog.insert(0,f"c {el} {index} 0")
        index += 1
        
    cnf_prog.append("c p semirings aspmc.semirings.probabilistic aspmc.semirings.two_nat 0")
    cnf_prog.append("c p transform lambda w : int(w[0] == w[1]) 0")
    lis = [str(v) for v in indexes_to_quantify]
    cnf_prog.append(f"c p quantify {' '.join(lis)} 0")
    cnf_prog.append("c p quantify 0")

    total_clauses = 0
    for c in cnf_prog:
        if not c.startswith('c'):
            total_clauses += 1
    
    s = "c p auxilliary "
    
    # tutte aux tranne quelle per bird e fly
    for i in range(n_prob_facts*2 + 1, len(var_index_cnf_list) + 1):
        s += f"{i} "
    s += '0'
    
    cnf_prog.append(s)

    cnf_prog.insert(0,f"p cnf {len(var_index_cnf_list)} {total_clauses}")

    # sys.exit()

    # print("----- CNF ----")
    for c in cnf_prog:
        print(c)
    
    print(f"c expected: {expected(lb, ub, n_prob_facts, 0.4)}")
    print("c time aspmc -m cnf prg.cnf -c -k c2d")
    # print(var_index_cnf_list)


command_parser = argparse.ArgumentParser()
command_parser.add_argument("prob_facts", help="Number of probabilistic facts",
                            type=int)
command_parser.add_argument("lb", help="Lower bound", type=float)
command_parser.add_argument("ub", help="Upper bound", type=float, default=1.0)

args = command_parser.parse_args()

main(args.prob_facts, args.lb, args.ub)