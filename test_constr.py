from sympy import *

from scipy.optimize import minimize
from scipy.optimize import NonlinearConstraint
from scipy.optimize import shgo

class Problem:
    '''
    Optimizable problem
    '''
    def __init__(
        self,
        function_to_opt : str,
        symbolic_variables : 'list[str]'
        ) -> None:
        self.function_to_opt = function_to_opt
        self.symbolic_variables = symbolic_variables


    def eval_fn(self, x : 'list[float]', other_to_eval : str = ""):
        '''
        Evaluates the constraint function
        '''
        if other_to_eval == "":
            s = str(self.function_to_opt)
        else:
            s = str(other_to_eval)
        
        for idx, val in enumerate(self.symbolic_variables):
            s = s.replace(val, str(x[idx]))
        # # return sympify(s)
        # return simplify_chunk(s)
        ev = eval(s)
        print(f"fn: {self.function_to_opt}, other: {other_to_eval}, ev in {x}: {ev}")
        return ev


    def jac_fn(self, x: 'list[float]'):
        '''
        Jacobian function
        '''
        j = []
        s = self.function_to_opt
        for symbolic_var in self.symbolic_variables:
            d = diff(s,symbolic_var)
            j.append(self.eval_fn(x,str(d)))
        return j

target_equation = "b+c"
opt_facts = ["b","c"]
problem_to_solve = Problem(target_equation, opt_facts)
bounds = [(0.4,0.8),(0.4,0.8)]
initial_guesses = [0,0]

# c0 = "(-0.4*b*(c - 1) + 1.0*c) - 0.7"
c0 = "(-0.4*b*(c - 1) + 1.0*c) - 0.7"
c1 = "-((b) - (c) - 0.06)"
c2 = "-((c) - (b) - 0.06)"

# inequality means that it is to be non-negative
constraints = []

cp0 = Problem(c0, opt_facts)
# constraints.append(
#     NonlinearConstraint(
#         cp0.eval_fn,
#         0,
#         10,
#         cp0.jac_fn
#     )
# )

cp0_dict = {
    'type' : 'ineq',
    'fun' : cp0.eval_fn,
    'jac' : cp0.jac_fn
}

cp1 = Problem(c1, opt_facts)
# constraints.append(
#     NonlinearConstraint(
#         cp1.eval_fn,
#         0,
#         10,
#         cp1.jac_fn
#     )
# )

cp1_dict = {
    'type' : 'ineq',
    'fun' : cp1.eval_fn,
    'jac' : cp1.jac_fn
}

cp2 = Problem(c2, opt_facts)
# constraints.append(
#     NonlinearConstraint(
#         cp2.eval_fn,
#         0,
#         10,
#         cp2.jac_fn
#     )
# )

cp2_dict = {
    'type' : 'ineq',
    'fun' : cp2.eval_fn,
    'jac' : cp2.jac_fn
}

res = minimize(
    problem_to_solve.eval_fn,
    initial_guesses,
    bounds=bounds,
    jac=problem_to_solve.jac_fn,
    method="SLSQP",
    options={'ftol': 1e-9},
    # constraints=constraints[0] # <--- sembra andarne uno solo, se tolgo[0] è come se non ci fossero vincoli
    constraints=[cp0_dict,cp1_dict,cp2_dict]
    # constraints=[cp1_dict,cp2_dict]
)

print(res)