import argparse
import random
import sys

import clingo

from input_programs import generate_coloring_4, generate_coloring_5
from input_programs import generate_paths_10, generate_paths_15
from input_programs import generate_shop_4, generate_shop_8, generate_shop_10, generate_shop_12
from input_programs import generate_smokers_1, generate_smokers_2, generate_smokers_3, generate_smokers_4, generate_smokers_5, generate_smokers_6 


def generate_answer_sets(program : str):
    '''
    Init clingo and grounds the program
    '''
    answer_sets : 'list[str]' = []
    ctl = clingo.Control(["0","--project"])
    try:
        ctl.add('base', [], program)
        ctl.ground([("base", [])])
    except RuntimeError:
        print("Syntax error, parsing failed.")
        sys.exit()

    with ctl.solve(yield_=True) as handle:  # type: ignore
        for m in handle:  # type: ignore
            answer_sets.append(str(m))  # type: ignore
        handle.get()  # type: ignore
    return answer_sets


def setup_program(
        program : str,
        facts : 'list[str]',
        n_interpretations : int,
        length_interpretations : int
    ):
    """
    Computes the interpretations.
    """
    probs = [random.random() for _ in range(len(facts))]

    # print(program)
    for l in facts:
        print(f"#learnable({l}).")

    print(f"\n% facts: {facts}")
    print(f"% probs: {probs}")
    for i in range(n_interpretations):
        for f, p in zip(facts, probs):
            r = random.random()
            if p > r:
                program += f"\n{f}.\n"
        
        # print("....")
        current_program = program + f"\nid({i}).\n"
        # print(program)
        # sys.exit()
        answer_sets = generate_answer_sets(current_program)

        # pick 1 random interpretation
        a = answer_sets[random.randint(0,len(answer_sets)-1)]
        
        print(f"\n% Interpretation {i}")
        
        selected_atoms = a.split(' ')
        if length_interpretations != -1:
            # at least one positive atom and one negative atom
            l_pos = [a for a in selected_atoms if a.startswith("pos")]
            l_neg = [a for a in selected_atoms if a.startswith("neg")]
            
            # min to avoid error while sampling (#samples > size) 
            n_pos = min(random.randint(1, length_interpretations - 1), len(l_pos))
            n_neg = min(length_interpretations - n_pos, len(l_neg))
            
            print(f"% (pos,neg) = ({n_pos}, {n_neg})")
            selected_pos = random.sample(l_pos, n_pos)
            selected_neg = random.sample(l_neg, n_neg)
            selected_atoms = selected_pos + selected_neg
            
            # fill the list in the case the number of sampels was too big
            if len(selected_atoms) < length_interpretations:
                not_selected = list(set(l_pos) - set(selected_pos)) + list(set(l_neg) - set(selected_neg))
                delta = length_interpretations - len(selected_atoms)
                selected_atoms = selected_atoms + random.sample(not_selected, delta)
        
        for atom in selected_atoms:
            print(f"#{atom}.")
    
    lt = ','.join([str(x) for x in range(n_interpretations)])
    print(f"\n#train({lt}).")


def parse_arguments():
    """
    Parses command line arguments.
    """
    parser = argparse.ArgumentParser(
        prog="Generate interpretations",
        description="Generate random interpretations from PASP"
    )

    parser.add_argument("-p",
        type=str,
        help="Possible programs",
        choices=["coloring","paths","shop","smokers"],
        required=True
    )

    parser.add_argument("-s",
        type=int,
        help="Program size",
        required=True
    )

    parser.add_argument("-n",
        type=int,
        help="Number of interpretations",
        default=5
    )

    parser.add_argument("-seed",
        type=int,
        help="Seed",
        default=42
    )
    
    parser.add_argument("-l",
        type=int,
        help="Number of literals in interpretations",
        default=-1
    )

    return parser.parse_args()


def main():
    """
    Main function.
    """
    args = parse_arguments()

    print(f"% {args}")
    
    random.seed(args.seed)
    
    if args.p == "coloring" and args.s not in [4,5]:
        print("Allowed sizes for coloring: 4 and 5")
        sys.exit()
    elif args.p == "paths" and args.s not in [10,15]:
        print("Allowed sizes for paths: 10 and 15")
        sys.exit()
    elif args.p == "shop" and args.s not in [4,8,10,12]:
        print("Allowed sizes for shop: 4, 8, 10, and 12")
        sys.exit()
    elif args.p == "smokers" and args.s not in range(1,7):
        print("Allowed sizes for smokers: 1, 2, 3, 4, 5, and 6")
        sys.exit()

    prog : str = ""
    facts : 'list[str]' = []

    if args.p == "coloring":
        if args.s == 4:
            prog, facts = generate_coloring_4()
        else:
            prog, facts = generate_coloring_5()
    elif args.p == "paths":
        if args.s == 10:
            prog, facts = generate_paths_10()
        else:
            prog, facts = generate_paths_15()
    elif args.p == "shop":
        if args.s == 4:
            prog, facts = generate_shop_4()
        elif args.s == 8:
            prog, facts = generate_shop_8()
        elif args.s == 10:
            prog, facts = generate_shop_10()
        elif args.s == 12:
            prog, facts = generate_shop_12()
    
    elif args.p == "smokers":
        if args.s == 1:
            prog, facts = generate_smokers_1()
        elif args.s == 2:
            prog, facts = generate_smokers_2()
        elif args.s == 3:
            prog, facts = generate_smokers_3()
        elif args.s == 4:
            prog, facts = generate_smokers_4()
        elif args.s == 5:
            prog, facts = generate_smokers_5()
        elif args.s == 6:
            prog, facts = generate_smokers_6()

    # setup the program
    setup_program(prog, facts, args.n, args.l)


if __name__ == "__main__":
    main()
