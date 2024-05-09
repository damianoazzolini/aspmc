import argparse

def parse_arguments():
    parser = argparse.ArgumentParser(
        prog="Parameter Learning",
        description="Learns the parameters of PASP"
    )

    parser.add_argument("filename",
        type=str,
        help="filename"
    )

    parser.add_argument("--method",
        type=str,
        required=True,
        help="Method to use",
        choices=["opt","EM"]
    )
    
    parser.add_argument("--opt-alg",
        type=str,
        default="COBYLA",
        help="Optimization algorithm to use",
        choices=["COBYLA","SLSQP"]
    )

    parser.add_argument("--target",
        type=str,
        help="Target probability",
        choices=["lower","upper"],
        default="upper"
    )
    
    parser.add_argument("--max-it",
        type=int,
        help="Max iterations",
        default=100
    )
    
    parser.add_argument("--epsilon",
        type=float,
        help="Min value LL delta",
        default=0.0005
    )

    parser.add_argument("--init-prob",
        type=float,
        help="Initial probability for facts to learn (-1 random)",
        default=-1
    )

    parser.add_argument("--skip-simplify",
        help="Simplify eqs",
        action="store_true"
    )    

    parser.add_argument("--plot",
        help="Plot the results",
        action="store_true"
    )

    parser.add_argument("--verbosity",
        help="Verbosity level",
        type=int,
        choices=range(0,2),
        default=0
    )

    return parser.parse_args()