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
    optimizable_facts[sys.argv[i]] = (0.05,0.95)

query_list = ["qr"]
constraints_list = ["P(qr) - 0.07"]

target_equation = ' + '.join([f"P({x})" for x in optimizable_facts_list])

for pair in combinations(range(len(optimizable_facts_list)),2):
    c0 = f"-(P({optimizable_facts_list[pair[0]]}) - P({optimizable_facts_list[pair[1]]}) - 0.06)"
    c1 = f"-(P({optimizable_facts_list[pair[1]]}) - P({optimizable_facts_list[pair[0]]}) - 0.06)"
    # print(c0)
    # print(c1)
    constraints_list.append(c0)
    constraints_list.append(c1)


res = compute_optimal_probability(
    program=program_str,
    query_list=query_list,
    optimizable_facts=optimizable_facts,
    target_equation=target_equation,
    constraints_list=constraints_list,
    target="LP",
    method=method
)

print(res)