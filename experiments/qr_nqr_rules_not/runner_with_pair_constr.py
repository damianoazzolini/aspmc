from itertools import combinations
import sys
from a import compute_optimal_probability

# call: p3 prov.py <filename> <method> followed by the optimizable facts

optimizable_facts_list : 'list[str]' = []
optimizable_facts : 'dict[str,tuple[float,float]]' = {}

filename = sys.argv[1]
with open(filename,"r") as f:
    program_str = f.read()

method = sys.argv[2]

for i in range(3, len(sys.argv)):
    optimizable_facts_list.append(sys.argv[i])
    if len(optimizable_facts) % 2 == 1:
        optimizable_facts[sys.argv[i]] = (0.01,0.11)
    else:
        optimizable_facts[sys.argv[i]] = (0.89,0.99)

query_list = ["qr"]
constraints_list = ["P(qr) - 0.7"]

target_equation = ' + '.join([f"P({x})" for x in optimizable_facts_list])

for pair in combinations(range(len(optimizable_facts_list)),2):
    if (pair[0] % 2 == 0 and pair[1] % 2 == 0) or (pair[0] % 2 == 1 and pair[1] % 2 == 1):
        c0 = f"-(P({optimizable_facts_list[pair[0]]}) - P({optimizable_facts_list[pair[1]]}) - 0.06)"
        c1 = f"-(P({optimizable_facts_list[pair[1]]}) - P({optimizable_facts_list[pair[0]]}) - 0.06)"
        constraints_list.append(c0)
        constraints_list.append(c1)


res = compute_optimal_probability(
    program=program_str,
    query_list=query_list,
    optimizable_facts=optimizable_facts,
    target_equation=target_equation,
    constraints_list=constraints_list,
    method=method
)

print(res)