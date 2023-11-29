from sympy import *

import sympy
print(sympy.__version__)
symbolic_variables = ["f(1,2)","f(1,3)"]

s = "(-0.9*f(1,2)*f(1,3) + 0.9*f(1,2) + 0.9*f(1,3)) - 0.7"
for symbolic_var in symbolic_variables:
    d = diff(s,symbolic_var)
    print(f"diff {s}:")
    print(str(d))