from eqs_handler import Program

def setup_program_EM(prog : Program) -> 'list[str]':
    """
    Setup the program for parameter learning.
    We need to compute P(fact, interpretation)
    """
    prg = prog.clauses[:]

    # add interpretation
    for idx in prog.interpretations_dict:
        interpretation = prog.interpretations_dict[idx]
        prg.append(interpretation.get_interpretation_query())
        # print(f"query({interpretation.get_interpretation_head()}).")
        prg.append(f"query({interpretation.get_interpretation_head()}).")
    
    # add probabilistic facts
    cont_queries : int = 0
    for lf in prog.learnable_facts:
        prg.append(f"{prog.learnable_facts[lf]}::{lf}.")

        for idx in prog.interpretations_dict:
            interpretation = prog.interpretations_dict[idx]
            for pr in ["f", "t"]:
                prefix = "" if pr == "t" else "\+"
                cleaned = lf.replace("(","_").replace(")","_").replace(",","_")
                q_name = f"new_query_{cleaned}_{pr}_{idx}"
                # print(f"query({q_name})")
                # print(f"{q_name} :- {prefix} {lf}, {interpretation.get_interpretation_head()}.")
                prg.append(f"{q_name} :- {prefix} {lf}, {interpretation.get_interpretation_head()}.")
                prg.append(f"query({q_name}).")
                cont_queries += 1
    print(f"Added {cont_queries} queries")
    return prg


def evaluate_function_EM(eq : str, learnable_facts : 'dict[str,float]') -> float:
    """
    Evaluates the eq by replacing the keys with values of learnable_facts
    """
    for idx, (key, val) in enumerate(learnable_facts.items()):
        eq = eq.replace(key, str(val))
    return eval(eq)

