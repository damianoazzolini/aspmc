from itertools import combinations
import sys
from a import compute_optimal_probability

# call: p3 prov.py <filename> <method> <type> followed by the credal facts

# type = strict -> range 0.45 0.55
# type = loose -> range 0.05 0.95

if len(sys.argv) < 4:
    print("Usage: p3 prov.py <filename> <method> <type> followed by the credal facts")

optimizable_facts_list : 'list[str]' = []
optimizable_facts : 'dict[str,tuple[float,float]]' = {}

filename = sys.argv[1]
with open(filename,"r") as f:
    program_str = f.read()

method = sys.argv[2]

strict = False
if sys.argv[3] == "strict":
    strict = True
elif sys.argv[3] == "loose":
    strict = False
else:
    print("Type can be strict or loose")
    sys.exit()

for i in range(4, len(sys.argv)):
    optimizable_facts_list.append(sys.argv[i])
    if strict:
        optimizable_facts[sys.argv[i]] = (0.45,0.55)
    else:
        optimizable_facts[sys.argv[i]] = (0.05,0.95)

query_list = "qr"


res = compute_optimal_probability(
    program=program_str,
    query=query_list,
    optimizable_facts=optimizable_facts,
    method=method
)

print(res)