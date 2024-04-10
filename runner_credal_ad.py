from itertools import combinations
import sys
from optimizable_wrapper import compute_optimal_probability

# call: p3 prov.py <filename> <method> followed by the optimizable facts

optimizable_facts_list : 'list[str]' = []
optimizable_facts : 'dict[str,tuple[float,float]]' = {}

filename = sys.argv[1]
with open(filename,"r") as f:
    program_str = f.read()

method = sys.argv[2]

for i in range(3, len(sys.argv)):
    optimizable_facts_list.append(sys.argv[i])
    optimizable_facts[sys.argv[i]] = (0,1)

query_list = ["qr"]
constraints_list = []

target_equation = '(P(qr))'

constraints_list.append("P(c1) - 0.1")
constraints_list.append("0.3 - P(c1)")

constraints_list.append("P(c2)")
constraints_list.append("1 - P(c2)")

constraints_list.append("(1-P(c1))*P(c2) - 0.2")
constraints_list.append("0.4 - (1-P(c1))*P(c2)")

constraints_list.append("(1-P(c1))*(1-P(c2)) - 0.4")
constraints_list.append("0.6 - (1-P(c1))*(1-P(c2))")



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