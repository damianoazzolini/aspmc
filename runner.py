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

optimizable_facts["a"] = (0.3,0.4)
optimizable_facts["b"] = (0.4,0.9)
# optimizable_facts["green"] = (0.2,0.4)
# optimizable_facts["blue"] = (0.4,0.6)

for i in range(3, len(sys.argv)):
    optimizable_facts_list.append(sys.argv[i])
    # optimizable_facts[sys.argv[i]] = (0.3,0.6)
    # optimizable_facts[sys.argv[i]] = (0,1)

query_list = "qr"


res = compute_optimal_probability(
    program=program_str,
    query=query_list,
    optimizable_facts=optimizable_facts,
    method=method
)

for e, b in zip(res,["LP","UP"]):
    print(f"{b} result")
    print(e)