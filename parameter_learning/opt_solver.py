import time

from scipy.optimize import minimize

from eqs_handler import get_nice_eqs, evaluate_eq, my_log

class ConstrainedProblem:
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
        
        return eval(s)


    def jac_fn(self, x: 'list[float]'):
        '''
        Jacobian function
        '''
        j = []
        s = self.function_to_opt
        for symbolic_var in self.symbolic_variables:
            d = diff(s,symbolic_var)
            # print(f"diff {s}:")
            # print(str(d))
            j.append(self.eval_fn(x,str(d).replace(' ','')))
        return j


def solve_optimization(
        eqs_list : 'list[str]',
        learnable_facts : 'list[str]',
        opt_alg : 'str'
    ) -> 'tuple[list[float],float]':
    """
    Solves the optimization problem.
    """
    constraints = []

    whole_eq : str = ""
    for eq in eqs_list:
        whole_eq = whole_eq + "my_log(" + eq + ")+"
    whole_eq = "-(" + whole_eq[:-1] + ")"


    learnable_facts_sorted = sorted(learnable_facts)
    
    # print("eq to minimize")
    # print(whole_eq)
    # print("learnable facts")
    # print(learnable_facts_sorted)
    

    initial_guesses =  [] 
    for el in learnable_facts:
        initial_guesses.append(0.5)

    opt_problem = ConstrainedProblem(whole_eq, learnable_facts_sorted)

    # constraints to keep the probabilities of the facts between 0 and 1
    for el in learnable_facts_sorted:
        current_problem_0 = ConstrainedProblem(f"1 - {el}", learnable_facts_sorted)
        current_problem_1 = ConstrainedProblem(f"{el}", learnable_facts_sorted)
        constraints.append({
            'type' : 'ineq',
            'fun' : current_problem_0.eval_fn,
            'jac' : current_problem_0.jac_fn    
        })
        constraints.append({
            'type' : 'ineq',
            'fun' : current_problem_1.eval_fn,
            'jac' : current_problem_1.jac_fn    
        })


    res = minimize(
        opt_problem.eval_fn,
        initial_guesses,
        method=opt_alg,
        constraints=constraints
    )

    print(res)

    return res.x, -res.fun

def solve_with_optimization(
        prog : 'Program',
        target : 'str',
        interpretation_eq_dict : 'dict[int,str]',
        opt_alg : 'str',
        simplify_eqs : bool
    ) -> 'tuple[list[float],float]':
    '''
    Solve with optimization problem
    '''
    ll0 = 0
    # step 2: compute the equations and probabilities of the interpretations
    print("Computing equations form interpretations")
        # print(interpretation.get_interpretation_query())
    prg = prog.clauses[:]
    for lf in prog.learnable_facts:
        prg.append(f"{prog.learnable_facts[lf]}::{lf}.")
    
    for idx in prog.interpretations_dict:
        interpretation = prog.interpretations_dict[idx]
        prg.append(interpretation.get_interpretation_query())
        prg.append(f"query({interpretation.get_interpretation_head()}).")

    # get equations for the interpretations
    eq_lp, eq_up = get_nice_eqs(prg, list(prog.learnable_facts.keys()), target, simplify_eqs, opt_mode=True)

    # for e in eq_up:
    #     print(f"->e: {e}")

    eq_lp = list(reversed(eq_lp))
    eq_up = list(reversed(eq_up))

    for index, idx in enumerate(prog.interpretations_dict):
        if target == "upper":
            interpretation_eq_dict[idx] = eq_up[index]
        else:
            interpretation_eq_dict[idx] = eq_lp[index]

        # print(f"computed: {interpretation_eq_dict[idx]}")
        ll0 += my_log(evaluate_eq(interpretation_eq_dict[idx], prog.learnable_facts))
    
    print(f"LL with initial values: {ll0}")

    start_time = time.time()
    vals, final_ll = solve_optimization(
        list(interpretation_eq_dict.values()),
        list(prog.learnable_facts.keys()),
        opt_alg
    )
    eq_opt_time = time.time() - start_time
    print(f"Opt time with {opt_alg}: {eq_opt_time} seconds")
    return vals, final_ll