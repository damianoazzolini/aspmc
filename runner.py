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
    optimizable_facts[sys.argv[i]] = (0.01,0.99)

query_list = "qr"


res = compute_optimal_probability(
    program=program_str,
    query=query_list,
    optimizable_facts=optimizable_facts,
    method=method
)

print(res)