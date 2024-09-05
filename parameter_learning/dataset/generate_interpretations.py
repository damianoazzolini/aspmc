import argparse
import random
import sys

import clingo


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
            answer_sets.append(str(m))
        handle.get()  # type: ignore
    return answer_sets


def setup_program(
        program : str,
        facts : 'list[str]',
        probs : 'list[float]',
        n_interpretations : int
    ):
    """
    Computes the interpretations.
    """
    print(f"\n% facts: {facts}")
    print(f"% probs: {probs}")
    for i in range(n_interpretations):
        for f, p in zip(facts, probs):
            r = random.random()
            if p > r:
                program += f"\n{f}.\n"
        
        answer_sets = generate_answer_sets(program + f"\nid({i}).\n")

        # sample 1
        a = answer_sets[random.randint(0,len(answer_sets)-1)]
        print(f"\n% Interpretation {i}")
        for atom in a.split(' '):
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
        help="Program",
        choices=["coloring","paths","shop","smokers"],
        required=True
    )

    parser.add_argument("-s",
        type=int,
        help="Size",
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

    return parser.parse_args()


def generate_coloring_4(n_interpretations : int):
    """
    Generates the coloring dataset.
    """

    coloring_4 = """
% Dataset coloring of size 4

red(X)  :- node(X), not blue(X),not green(X).
green(X):- node(X), not red(X), not blue(X).
blue(X) :- node(X), not red(X), not green(X).

e(X,Y) :- edge(X,Y).
e(X,Y) :- edge(Y,X).

c0 :- e(X,Y), red(X), red(Y).
c1 :- e(X,Y), green(X), green(Y).
c2 :- e(X,Y), blue(X), blue(Y).

valid :- not c0, not c1, not c2.

node(1).
node(2).
node(3).
node(4).

"""
    learnable_4 = [
        "edge(1,2)",
        "edge(1,3)",
        "edge(1,4)",
        "edge(2,3)",
        "edge(2,4)",
        "edge(3,4)"
    ]

    to_show = """

positive(ID,red(A)):- id(ID), red(A).
positive(ID,green(A)):- id(ID), green(A).
positive(ID,blue(A)):- id(ID), blue(A).
positive(ID,valid):- id(ID), valid.

negative(ID,red(A)):- id(ID), node(A), not red(A).
negative(ID,green(A)):- id(ID), node(A), not green(A).
negative(ID,blue(A)):- id(ID), node(A), not blue(A).
negative(ID,valid):- id(ID), not valid.

#show positive/2.
#show negative/2.
% #show red/1.
% #show green/1.
% #show blue/1.
% #show valid/0.
"""

    probs = [x/10 for x in range(1,7)]

    print(coloring_4)
    for l in learnable_4:
        print(f"#learnable({l}).")

    setup_program(coloring_4 + to_show, learnable_4, probs, n_interpretations)

    return


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
    elif args.p == "smokers" and args.s not in range(2,7):
        print("Allowed sizes for smokers: 2, 3, 4, 5, and 6")
        sys.exit()

    if args.p == "coloring":
        generate_coloring_4(args.n)


if __name__ == "__main__":
    main()