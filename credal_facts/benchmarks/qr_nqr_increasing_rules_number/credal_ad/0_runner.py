from itertools import combinations
import sys
from aconst import compute_optimal_probability

# call: p3 prov.py <filename> <method> <n_opt_facts>

optimizable_facts_list : 'list[str]' = []
optimizable_facts : 'dict[str,tuple[float,float]]' = {}

filename = sys.argv[1]
with open(filename,"r") as f:
    program_str = f.read()

method = sys.argv[2]

for i in range(int(sys.argv[3])):
    for f in [f"va{i}", f"vb{i}"]:
        optimizable_facts_list.append(f)
        if i != 0:
            optimizable_facts[f] = (0,1)
        else:
            optimizable_facts[f] = (0.1,0.3)

query_list = ["qr"]
constraints_list = []

target_equation = '(P(qr))'

# bounds [0.1,0.3], [0.2,0.4], and [0.4,0.6]
# the optimizable facts should be va0, vb0, va1, vb1, ...


for i in range(int(sys.argv[3])):
    # facts = vai, vbi
    fai = f"va{i}" 
    fbi = f"vb{i}"
    constraints_list.append(f"P({fai}) - 0.1")
    constraints_list.append(f"0.3 - P({fai})")

    # constraints_list.append(f"P({fbi})")
    # constraints_list.append(f"1 - P({fbi})")

    constraints_list.append(f"P({fbi}) * (1-P({fai})) - 0.2")
    constraints_list.append(f"0.4 - P({fbi}) * (1-P({fai}))")

    constraints_list.append(f"(1 - P({fai})) * (1-P({fbi})) - 0.4")
    constraints_list.append(f"0.6 - (1-P({fai})) * (1-P({fbi}))")

# print(constraints_list)

res = compute_optimal_probability(
    program=program_str,
    query="qr",
    optimizable_facts=optimizable_facts,
    constraints_list=constraints_list,
    method=method
)

print("LP")
print(res[0])
print("UP")
print(res[1])