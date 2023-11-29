import sys
import random

# if len(sys.argv) < 3:
#     print("Parameters: probaiblity and precision")
#     sys.exit()


precision = 5

for i in range(int(sys.argv[1])):
    prob = float(str(random.random())[:5])

    int_prob = int(prob * 2**precision)

    if int_prob % 2 == 0:
        # only odd numbers
        int_prob += 1

    bin_rep = str(bin(int_prob))[2:].rjust(precision, "0")
    print(f"% {prob}")
    print(f"% {int_prob}")
    print(f"% {bin_rep}")

    rules : 'list[str]' = []

    # ax_i_index are the clauses
    # a_i_index are the choice rules (atoms)
    for index, value in enumerate(bin_rep):
        print("{a" + f"_{i}_" + str(index) + "}.")
        # AND
        if int(value) == 0:
            r = f"a_{i}_{index} and a_{i}_{index + 1}"
            # print(r)
            rules.append(r)
        # OR
        else:
            r = f"a_{i}_{index} or a_{i}_{index + 1}"
            # print(r)
            rules.append(r)
            
    print("{a" + f"_{i}_" + str(len(bin_rep)) + "}.")

    rules.reverse()

    # print(rules)

    for index, r in enumerate(rules):
        # if index == 0:
        if 'or' in r:
            rs = r.split('or')
            print(f"ax_{i}_{index}:- {rs[0].replace(' ', '')}.")
            if index == 0:
                print(f"ax_{i}_{index}:- {rs[1].replace(' ', '')}.")
            else:
                print(f"ax_{i}_{index}:- ax_{i}_{index - 1}.")
        else:
            rs = r.split('and')
            if index == 0:
                print(f"ax_{i}_{index}:- {rs[0].replace(' ', '')}, {rs[1].replace(' ', '')}.")
            else:
                print(f"ax_{i}_{index}:- {rs[0].replace(' ', '')}, ax_{i}_{index - 1}.")
    
    print("% suppose or as query: q:- a. q:- b. ...")
    print(f"q:- ax_{i}_{len(rules) - 1}.")
    print(":- not q.")
    # print(f"q:- ")
