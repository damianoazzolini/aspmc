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
        n_interpretations : int
    ):
    """
    Computes the interpretations.
    """
    probs = [random.random() for _ in range(len(facts))]

    print(program)
    for l in facts:
        print(f"#learnable({l}).")

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
    Generates the coloring 4 dataset.
    """

    program = """
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
    learnable = [
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

    setup_program(program + to_show, learnable, n_interpretations)


def generate_coloring_5(n_interpretations : int):
    """
    Generates the coloring 5 dataset.
    """

    program = """
% Dataset coloring of size 5

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
node(5).

"""
    learnable = [
        "edge(1,2)",
        "edge(1,3)",
        "edge(1,4)",
        "edge(1,5)",
        "edge(2,3)",
        "edge(2,4)",
        "edge(2,5)",
        "edge(3,4)",
        "edge(3,5)",
        "edge(4,5)",
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

    setup_program(program + to_show, learnable, n_interpretations)

################ paths
# NOTE: error: unsafe variables in: negative(ID,path(A,B)):-[#inc_base];id(ID);not path(A,B).
def generate_paths_10(n_interpretations : int):
    """
    Generates the paths 10 dataset.
    """

    program = """
% Dataset paths of size 10

path(X,Y):- connected(X,Z), path(Z,Y).
path(X,Y):- connected(X,Y).

connected(X,Y) :- edge(X,Y), not nconnected(X,Y).
nconnected(X,Y):- edge(X,Y), not connected(X,Y).

node(1).
node(2).
node(3).
node(4).
node(5).
node(6).
node(7).
node(8).
node(9).

"""
    learnable = [
        "edge(1,5)",
        "edge(1,7)",
        "edge(2,4)",
        "edge(2,6)",
        "edge(3,5)",
        "edge(3,9)",
        "edge(4,7)",
        "edge(4,9)",
        "edge(5,6)",
        "edge(6,8)"
    ]

    to_show = """
positive(ID,path(A,B)):- id(ID), path(A,B).
negative(ID,path(A,B)):- id(ID), not path(A,B).

#show positive/2.
#show negative/2.
"""

    setup_program(program + to_show, learnable, n_interpretations)
    
# NOTE: error: unsafe variables in: negative(ID,path(A,B)):-[#inc_base];id(ID);not path(A,B).
def generate_paths_15(n_interpretations : int):
    """
    Generates the paths 15 dataset.
    """

    program = """
% Dataset paths of size 15

path(X,Y):- connected(X,Z), path(Z,Y).
path(X,Y):- connected(X,Y).

connected(X,Y) :- edge(X,Y), not nconnected(X,Y).
nconnected(X,Y):- edge(X,Y), not connected(X,Y).

node(1).
node(2).
node(3).
node(4).
node(5).
node(6).
node(7).
node(8).
node(9).

node(10).
node(11).
node(12).
node(13).

"""
    learnable = [
        "edge(1,5)",
        "edge(1,7)",
        "edge(2,4)",
        "edge(2,6)",
        "edge(3,5)",
        "edge(3,9)",
        "edge(4,7)",
        "edge(4,9)",
        "edge(5,6)",
        "edge(6,8)",
        "edge(7,10)",
        "edge(8,11)",
        "edge(9,10)",
        "edge(10,13)",
        "edge(11,12)",
    ]
    to_show = """
positive(ID,path(A,B)):- id(ID), path(A,B).
negative(ID,path(A,B)):- id(ID), not path(A,B).

#show positive/2.
#show negative/2.
"""
    
    setup_program(program + to_show, learnable, n_interpretations)

############### shop
# NOTE: error: unsafe variables in: negative(ID,bought(A)):-[#inc_base];id(ID);not bought(A).
# ^ Risolto mettendo A ground
def generate_shop_4(n_interpretations : int):
    """
    Generates the shop 4 dataset.
    """

    program = """ 
bought(spaghetti,john) :- shops(john), not bought(steak,john).
bought(steak,john)     :- shops(john), not bought(spaghetti,john).
bought(spaghetti,mary) :- shops(mary), not bought(beans,mary).
bought(beans,mary)     :- shops(mary), not bought(spaghetti,mary).
bought(tomato,carl)    :- shops(carl), not bought(onions,carl).
bought(onions,carl)    :- shops(carl), not bought(tomato,carl).
bought(steak,louis)    :- shops(louis), not bought(onions,louis).
bought(onions,louis)   :- shops(louis), not bought(steak,louis).

bought(spaghetti) :- bought(spaghetti,_).
bought(steak)     :- bought(steak,_).
bought(beans)     :- bought(beans,_).
bought(onions)    :- bought(onions,_).
bought(tomato)    :- bought(tomato,_).

:- bought(spaghetti),bought(onions).
:- bought(tomato),bought(steak).
:- bought(spaghetti),bought(tomato).

"""
    learnable = [
        "shops(john)",
        "shops(mary)",
        "shops(carl)",
        "shops(louis)"
    ]

    to_show = """

positive(ID,bought(spaghetti)):- id(ID), bought(spaghetti).
positive(ID,bought(steak)):- id(ID), bought(steak).
positive(ID,bought(beans)):- id(ID), bought(beans).
positive(ID,bought(onions)):- id(ID), bought(onions).
positive(ID,bought(tomato)):- id(ID), bought(tomato).

negative(ID,bought(spaghetti)):- id(ID), not bought(spaghetti).
negative(ID,bought(steak)):- id(ID), not bought(steak).
negative(ID,bought(beans)):- id(ID), not bought(beans).
negative(ID,bought(onions)):- id(ID), not bought(onions).
negative(ID,bought(tomato)):- id(ID), not bought(tomato).

#show positive/2.
#show negative/2.
"""
    
    setup_program(program + to_show, learnable, n_interpretations)

def generate_shop_8(n_interpretations : int):
    """
    Generates the shop 8 dataset.
    """

    program = """ 
% Dataset shop of size 8

bought(spaghetti,john) :- shops(john), not bought(steak,john).
bought(steak,john)     :- shops(john), not bought(spaghetti,john).

bought(spaghetti,mary) :- shops(mary), not bought(beans,mary).
bought(beans,mary)     :- shops(mary), not bought(spaghetti,mary).

bought(tomato,carl) :- shops(carl), not bought(onions,carl).
bought(onions,carl) :- shops(carl), not bought(tomato,carl).

bought(steak,louis)  :- shops(louis), not bought(onions,louis).
bought(onions,louis) :- shops(louis), not bought(steak,louis).

bought(pizza,e)  :- shops(e), not bought(nails,e), not bought(onions,e).
bought(nails,e)  :- shops(e), not bought(pizza,e), not bought(onions,e).
bought(onions,e) :- shops(e), not bought(pizza,e), not bought(nails,e).

bought(spaghetti,f) :- shops(f), not bought(beans,f),     not bought(nails,f).
bought(beans,f)     :- shops(f), not bought(spaghetti,f), not bought(nails,f).
bought(nails,f)     :- shops(f), not bought(spaghetti,f), not bought(beans,f).

bought(tomato,g) :- shops(g), not bought(onions,g), not bought(socks,g).
bought(onions,g) :- shops(g), not bought(tomato,g), not bought(socks,g).
bought(socks,g)  :- shops(g), not bought(tomato,g), not bought(onions,g).

bought(tuna,h)     :- shops(h), not bought(onions,h), not bought(zucchini,h).
bought(onions,h)   :- shops(h), not bought(tuna,h), not bought(zucchini,h).
bought(zucchini,h) :- shops(h), not bought(tuna,h), not bought(onions,h).

bought(spaghetti):-  bought(spaghetti,_).
bought(steak):- bought(steak,_).
bought(beans):- bought(beans,_).
bought(onions):- bought(onions,_).
bought(tomato):- bought(tomato,_).
bought(pizza):- bought(pizza,_).
bought(nails):- bought(nails,_).
bought(socks):- bought(socks,_).
bought(tuna):- bought(tuna,_).
bought(zucchini):- bought(zucchini,_).

:- bought(tuna),bought(spaghetti),bought(tomato).
:- bought(tomato),bought(onions),bought(beans).
:- bought(pizza),bought(tomato),bought(zucchini).
:- bought(spaghetti),bought(zucchini),bought(onions).
:- bought(spaghetti),bought(tomato),bought(zucchini).
:- bought(spaghetti),bought(onions),bought(socks).
:- bought(steak),bought(pizza),bought(socks).
:- bought(beans),bought(zucchini),bought(steak).
:- bought(nails),bought(spaghetti),bought(socks).

"""
    learnable = [
        "shops(john)",
        "shops(mary)",
        "shops(carl)",
        "shops(louis)",
        "shops(e)",
        "shops(f)",
        "shops(g)",
        "shops(h)"
    ]
    to_show = """ 
positive(ID,bought(spaghetti)):- id(ID), bought(spaghetti).
positive(ID,bought(steak)):- id(ID), bought(steak).
positive(ID,bought(beans)):- id(ID), bought(beans).
positive(ID,bought(onions)):- id(ID), bought(onions).
positive(ID,bought(tomato)):- id(ID), bought(tomato).
positive(ID,bought(pizza)):- id(ID), bought(pizza).
positive(ID,bought(nails)):- id(ID), bought(nails).
positive(ID,bought(socks)):- id(ID), bought(socks).
positive(ID,bought(tuna)):- id(ID), bought(tuna).
positive(ID,bought(zucchini)):- id(ID), bought(zucchini).

negative(ID,bought(spaghetti)):- id(ID), not bought(spaghetti).
negative(ID,bought(steak)):- id(ID), not bought(steak).
negative(ID,bought(beans)):- id(ID), not bought(beans).
negative(ID,bought(onions)):- id(ID), not bought(onions).
negative(ID,bought(tomato)):- id(ID), not bought(tomato).
negative(ID,bought(pizza)):- id(ID), not bought(pizza).
negative(ID,bought(nails)):- id(ID), not bought(nails).
negative(ID,bought(socks)):- id(ID), not bought(socks).
negative(ID,bought(tuna)):- id(ID), not bought(tuna).
negative(ID,bought(zucchini)):- id(ID), not bought(zucchini).

#show positive/2.
#show negative/2.
"""
    setup_program(program + to_show, learnable, n_interpretations)

def generate_shop_10(n_interpretations : int):
    """
    Generates the shop 10 dataset.
    """

    program = """ 
% Dataset shop of size 10

bought(spaghetti,john) :- shops(john), not bought(steak,john).
bought(steak,john)     :- shops(john), not bought(spaghetti,john).

bought(spaghetti,mary) :- shops(mary), not bought(beans,mary).
bought(beans,mary)     :- shops(mary), not bought(spaghetti,mary).

bought(tomato,carl) :- shops(carl), not bought(onions,carl).
bought(onions,carl) :- shops(carl), not bought(tomato,carl).

bought(steak,louis)  :- shops(louis), not bought(onions,louis).
bought(onions,louis) :- shops(louis), not bought(steak,louis).

bought(pizza,e)  :- shops(e), not bought(nails,e), not bought(onions,e).
bought(nails,e)  :- shops(e), not bought(pizza,e), not bought(onions,e).
bought(onions,e) :- shops(e), not bought(pizza,e), not bought(nails,e).

bought(spaghetti,f) :- shops(f), not bought(beans,f),     not bought(nails,f).
bought(beans,f)     :- shops(f), not bought(spaghetti,f), not bought(nails,f).
bought(nails,f)     :- shops(f), not bought(spaghetti,f), not bought(beans,f).

bought(tomato,g) :- shops(g), not bought(onions,g), not bought(socks,g).
bought(onions,g) :- shops(g), not bought(tomato,g), not bought(socks,g).
bought(socks,g)  :- shops(g), not bought(tomato,g), not bought(onions,g).

bought(tuna,h)     :- shops(h), not bought(onions,h), not bought(zucchini,h).
bought(onions,h)   :- shops(h), not bought(tuna,h), not bought(zucchini,h).
bought(zucchini,h) :- shops(h), not bought(tuna,h), not bought(onions,h).


bought(salami,i)   :- shops(i), not bought(onions,i), not bought(zucchini,i), not bought(tape,i) .
bought(onions,i)   :- shops(i), not bought(salami,i), not bought(zucchini,i), not bought(tape,i).
bought(zucchini,i) :- shops(i), not bought(salami,i), not bought(onions,i),   not bought(tape,i).
bought(tape,i)     :- shops(i), not bought(salami,i), not bought(onions,i),   not bought(zucchini,i).

bought(nails,l)     :- shops(l), not bought(tuna,l),  not bought(steak,l), not bought(spaghetti,l).
bought(tuna,l)      :- shops(l), not bought(nails,l), not bought(steak,l), not bought(spaghetti,l).
bought(steak,l)     :- shops(l), not bought(nails,l), not bought(tuna,l),  not bought(spaghetti,l).
bought(spaghetti,l) :- shops(l), not bought(nails,l), not bought(tuna,l),  not bought(steak,l).


bought(spaghetti):-  bought(spaghetti,_).
bought(steak):- bought(steak,_).
bought(beans):- bought(beans,_).
bought(onions):- bought(onions,_).
bought(tomato):- bought(tomato,_).
bought(pizza):- bought(pizza,_).
bought(nails):- bought(nails,_).
bought(socks):- bought(socks,_).
bought(tuna):- bought(tuna,_).
bought(zucchini):- bought(zucchini,_).
bought(salami):- bought(salami,_).
bought(tape):- bought(tape,_).

:- bought(pizza),bought(tape),bought(onions).
:- bought(tape),bought(socks),bought(pizza).
:- bought(steak),bought(zucchini),bought(nails).
:- bought(onions),bought(tape),bought(zucchini).
:- bought(steak),bought(onions),bought(socks).
:- bought(steak),bought(nails),bought(socks).
:- bought(onions),bought(tomato),bought(steak).
:- bought(pizza),bought(salami),bought(tape).
:- bought(nails),bought(tape),bought(steak).

"""
    learnable = [
        "shops(john)",
        "shops(mary)",
        "shops(carl)",
        "shops(louis)",
        "shops(e)",
        "shops(f)",
        "shops(g)",
        "shops(h)",
        "shops(i)",
        "shops(l)"
    ]
    to_show = """ 
positive(ID,bought(spaghetti)):- id(ID), bought(spaghetti).
positive(ID,bought(steak)):- id(ID), bought(steak).
positive(ID,bought(beans)):- id(ID), bought(beans).
positive(ID,bought(onions)):- id(ID), bought(onions).
positive(ID,bought(tomato)):- id(ID), bought(tomato).
positive(ID,bought(pizza)):- id(ID), bought(pizza).
positive(ID,bought(nails)):- id(ID), bought(nails).
positive(ID,bought(socks)):- id(ID), bought(socks).
positive(ID,bought(tuna)):- id(ID), bought(tuna).
positive(ID,bought(zucchini)):- id(ID), bought(zucchini).
positive(ID,bought(salami)):- id(ID), bought(salami).
positive(ID,bought(tape)):- id(ID), bought(tape).

negative(ID,bought(spaghetti)):- id(ID), not bought(spaghetti).
negative(ID,bought(steak)):- id(ID), not bought(steak).
negative(ID,bought(beans)):- id(ID), not bought(beans).
negative(ID,bought(onions)):- id(ID), not bought(onions).
negative(ID,bought(tomato)):- id(ID), not bought(tomato).
negative(ID,bought(pizza)):- id(ID), not bought(pizza).
negative(ID,bought(nails)):- id(ID), not bought(nails).
negative(ID,bought(socks)):- id(ID), not bought(socks).
negative(ID,bought(tuna)):- id(ID), not bought(tuna).
negative(ID,bought(zucchini)):- id(ID), not bought(zucchini).
negative(ID,bought(salami)):- id(ID), not bought(salami).
negative(ID,bought(tape)):- id(ID), not bought(tape).

#show positive/2.
#show negative/2.
"""
    setup_program(program + to_show, learnable, n_interpretations)

def generate_shop_12(n_interpretations : int):
    """
    Generates the shop 12 dataset.
    """

    program = """
% Dataset shop of size 12

bought(spaghetti,john) :- shops(john), not bought(steak,john).
bought(steak,john)     :- shops(john), not bought(spaghetti,john).

bought(spaghetti,mary) :- shops(mary), not bought(beans,mary).
bought(beans,mary)     :- shops(mary), not bought(spaghetti,mary).

bought(tomato,carl) :- shops(carl), not bought(onions,carl).
bought(onions,carl) :- shops(carl), not bought(tomato,carl).

bought(steak,louis)  :- shops(louis), not bought(onions,louis).
bought(onions,louis) :- shops(louis), not bought(steak,louis).

bought(pizza,e)  :- shops(e), not bought(nails,e), not bought(onions,e).
bought(nails,e)  :- shops(e), not bought(pizza,e), not bought(onions,e).
bought(onions,e) :- shops(e), not bought(pizza,e), not bought(nails,e).

bought(spaghetti,f) :- shops(f), not bought(beans,f),     not bought(nails,f).
bought(beans,f)     :- shops(f), not bought(spaghetti,f), not bought(nails,f).
bought(nails,f)     :- shops(f), not bought(spaghetti,f), not bought(beans,f).

bought(tomato,g) :- shops(g), not bought(onions,g), not bought(socks,g).
bought(onions,g) :- shops(g), not bought(tomato,g), not bought(socks,g).
bought(socks,g)  :- shops(g), not bought(tomato,g), not bought(onions,g).

bought(tuna,h)     :- shops(h), not bought(onions,h), not bought(zucchini,h).
bought(onions,h)   :- shops(h), not bought(tuna,h), not bought(zucchini,h).
bought(zucchini,h) :- shops(h), not bought(tuna,h), not bought(onions,h).


bought(salami,i)   :- shops(i), not bought(onions,i), not bought(zucchini,i), not bought(tape,i) .
bought(onions,i)   :- shops(i), not bought(salami,i), not bought(zucchini,i), not bought(tape,i).
bought(zucchini,i) :- shops(i), not bought(salami,i), not bought(onions,i),   not bought(tape,i).
bought(tape,i)     :- shops(i), not bought(salami,i), not bought(onions,i),   not bought(zucchini,i).

bought(nails,l)     :- shops(l), not bought(tuna,l),  not bought(steak,l), not bought(spaghetti,l).
bought(tuna,l)      :- shops(l), not bought(nails,l), not bought(steak,l), not bought(spaghetti,l).
bought(steak,l)     :- shops(l), not bought(nails,l), not bought(tuna,l),  not bought(spaghetti,l).
bought(spaghetti,l) :- shops(l), not bought(nails,l), not bought(tuna,l),  not bought(steak,l).


bought(beans,m)     :- shops(m), not bought(onions,m),not bought(steak,m), not bought(spaghetti,m), not bought(nails,m).
bought(onions,m)    :- shops(m), not bought(beans,m), not bought(steak,m), not bought(spaghetti,m), not bought(nails,m).
bought(steak,m)     :- shops(m), not bought(beans,m), not bought(onions,m),not bought(spaghetti,m), not bought(nails,m).
bought(spaghetti,m) :- shops(m), not bought(beans,m), not bought(onions,m),not bought(steak,m),     not bought(nails,m).
bought(nails,m)     :- shops(m), not bought(beans,m), not bought(onions,m),not bought(steak,m),     not bought(spaghetti,m).


bought(nails,n)     :- shops(n), not bought(tomato,n), not bought(steak,n), not bought(tuna,n), not bought(spaghetti,n).
bought(tomato,n)    :- shops(n), not bought(nails,n), not bought(steak,n), not bought(tuna,n), not bought(spaghetti,n).
bought(steak,n)     :- shops(n), not bought(nails,n), not bought(tomato,n), not bought(tuna,n), not bought(spaghetti,n).
bought(tuna,n)      :- shops(n), not bought(nails,n), not bought(tomato,n), not bought(steak,n), not bought(spaghetti,n).
bought(spaghetti,n) :- shops(n), not bought(nails,n), not bought(tomato,n), not bought(steak,n), not bought(tuna,n).


bought(spaghetti):-  bought(spaghetti,_).
bought(steak):- bought(steak,_).
bought(beans):- bought(beans,_).
bought(onions):- bought(onions,_).
bought(tomato):- bought(tomato,_).
bought(pizza):- bought(pizza,_).
bought(nails):- bought(nails,_).
bought(socks):- bought(socks,_).
bought(tuna):- bought(tuna,_).
bought(zucchini):- bought(zucchini,_).
bought(salami):- bought(salami,_).
bought(tape):- bought(tape,_).

:- bought(beans),bought(pizza).
:- bought(onions),bought(tuna).
:- bought(socks),bought(pizza).
:- bought(spaghetti),bought(beans).
:- bought(salami),bought(beans).
:- bought(beans),bought(socks).
"""
    learnable = [
        "shops(john)",
        "shops(mary)",
        "shops(carl)",
        "shops(louis)",
        "shops(e)",
        "shops(f)",
        "shops(g)",
        "shops(h)",
        "shops(i)",
        "shops(l)",
        "shops(m)",
        "shops(n)"
    ]
    to_show = """
positive(ID,bought(spaghetti)):- id(ID), bought(spaghetti).
positive(ID,bought(steak)):- id(ID), bought(steak).
positive(ID,bought(beans)):- id(ID), bought(beans).
positive(ID,bought(onions)):- id(ID), bought(onions).
positive(ID,bought(tomato)):- id(ID), bought(tomato).
positive(ID,bought(pizza)):- id(ID), bought(pizza).
positive(ID,bought(nails)):- id(ID), bought(nails).
positive(ID,bought(socks)):- id(ID), bought(socks).
positive(ID,bought(tuna)):- id(ID), bought(tuna).
positive(ID,bought(zucchini)):- id(ID), bought(zucchini).
positive(ID,bought(salami)):- id(ID), bought(salami).
positive(ID,bought(tape)):- id(ID), bought(tape).

negative(ID,bought(spaghetti)):- id(ID), not bought(spaghetti).
negative(ID,bought(steak)):- id(ID), not bought(steak).
negative(ID,bought(beans)):- id(ID), not bought(beans).
negative(ID,bought(onions)):- id(ID), not bought(onions).
negative(ID,bought(tomato)):- id(ID), not bought(tomato).
negative(ID,bought(pizza)):- id(ID), not bought(pizza).
negative(ID,bought(nails)):- id(ID), not bought(nails).
negative(ID,bought(socks)):- id(ID), not bought(socks).
negative(ID,bought(tuna)):- id(ID), not bought(tuna).
negative(ID,bought(zucchini)):- id(ID), not bought(zucchini).
negative(ID,bought(salami)):- id(ID), not bought(salami).
negative(ID,bought(tape)):- id(ID), not bought(tape).

#show positive/2.
#show negative/2.
"""
    
    setup_program(program + to_show, learnable, n_interpretations)

################# smokers
# NOTE: ERRORE sulle probabilità: <block>:2:2-3: error: syntax error, unexpected .
def generate_smokers_1(n_interpretations : int):
    """
    Generates the smokers 1 dataset.
    """

    program = """
0.1 :: asthma_f(1).
0.1 :: asthma_f(2).
0.3 :: stress(1).
0.3 :: stress(2).
0.4 :: stress_fact(1).
0.4 :: stress_fact(2).
0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).
0.2 :: pred.

smokes(X) :- stress(X), stress_fact(X).
smokes(X) :- influences(Y,X), smokes(Y).
asthma_rule(X):- smokes(X), asthma_fact(X).
asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).
ill(X)  :- smokes(X), asthma(X), not n_ill(X).
n_ill(X):- smokes(X), asthma(X), pred, not ill(X).

"""
    learnable = [
        "influences(1,2)",
        "influences(2,1)"
    ]
    to_show = """
positive(ID,ill(A)):- id(ID), ill(A).
negative(ID,ill(A)):- id(ID), not ill(A).

#show positive/2.
#show negative/2.
"""
    
    setup_program(program + to_show, learnable, n_interpretations)

def generate_smokers_2(n_interpretations : int):
    """
    Generates the smokers 2 dataset.
    """

    program = """
% Dataset smokers of size 2

0.1 :: asthma_f(1).
0.1 :: asthma_f(2).
0.3 :: stress(1).
0.3 :: stress(2).
0.4 :: stress_fact(1).
0.4 :: stress_fact(2).
0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).
0.2 :: pred.

0.1 :: asthma_f(3).
0.3 :: stress(3).
0.4 :: stress_fact(3).
0.4 :: asthma_fact(3).

smokes(X) :- stress(X), stress_fact(X).
smokes(X) :- influences(Y,X), smokes(Y).
asthma_rule(X):- smokes(X), asthma_fact(X).
asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).
ill(X)  :- smokes(X), asthma(X), \+ n_ill(X).
n_ill(X):- smokes(X), asthma(X), pred, \+ ill(X).

"""
    learnable = [
        "influences(1,2)",
        "influences(2,1)"
    ]
    to_show = """"""
    
    setup_program(program + to_show, learnable, n_interpretations)

def generate_smokers_3(n_interpretations : int):
    """
    Generates the smokers 3 dataset.
    """

    program = """
% Dataset smokers of size 3

0.1 :: asthma_f(1).
0.1 :: asthma_f(2).
0.3 :: stress(1).
0.3 :: stress(2).
0.4 :: stress_fact(1).
0.4 :: stress_fact(2).
0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).
0.2 :: pred.
0.1 :: asthma_f(3).
0.3 :: stress(3).
0.4 :: stress_fact(3).
0.4 :: asthma_fact(3).

0.1 :: asthma_f(4).
0.3 :: stress(4).
0.4 :: stress_fact(4).
0.4 :: asthma_fact(4).

smokes(X) :- stress(X), stress_fact(X).
smokes(X) :- influences(Y,X), smokes(Y).
asthma_rule(X):- smokes(X), asthma_fact(X).
asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).
ill(X)  :- smokes(X), asthma(X), \+ n_ill(X).
n_ill(X):- smokes(X), asthma(X), pred, \+ ill(X).

"""
    learnable = [
        "influences(1,2)",
        "influences(2,1)"
    ]
    to_show = """ """
    setup_program(program + to_show, learnable, n_interpretations)

def generate_smokers_4(n_interpretations : int):
    """
    Generates the smokers 4 dataset.
    """

    program = """
% Dataset smokers of size 4

0.1 :: asthma_f(1).
0.1 :: asthma_f(2).
0.3 :: stress(1).
0.3 :: stress(2).
0.4 :: stress_fact(1).
0.4 :: stress_fact(2).
0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).
0.2 :: pred.
0.1 :: asthma_f(3).
0.3 :: stress(3).
0.4 :: stress_fact(3).
0.4 :: asthma_fact(3).
0.1 :: asthma_f(4).
0.3 :: stress(4).
0.4 :: stress_fact(4).
0.4 :: asthma_fact(4).

smokes(X) :- stress(X), stress_fact(X).
smokes(X) :- influences(Y,X), smokes(Y).
asthma_rule(X):- smokes(X), asthma_fact(X).
asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).
ill(X)  :- smokes(X), asthma(X), \+ n_ill(X).
n_ill(X):- smokes(X), asthma(X), pred, \+ ill(X).

"""
    learnable = [
        "influences(1,2)",
        "influences(2,1)",
        "influences(2,3)"
    ]
    to_show = """ """
    setup_program(program + to_show, learnable, n_interpretations)

def generate_smokers_5(n_interpretations : int):
    """
    Generates the smokers 5 dataset.
    """

    program = """
% Dataset smokers of size 5

0.1 :: asthma_f(1).
0.1 :: asthma_f(2).
0.3 :: stress(1).
0.3 :: stress(2).
0.4 :: stress_fact(1).
0.4 :: stress_fact(2).
0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).
0.2 :: pred.
0.1 :: asthma_f(3).
0.3 :: stress(3).
0.4 :: stress_fact(3).
0.4 :: asthma_fact(3).
0.1 :: asthma_f(4).
0.3 :: stress(4).
0.4 :: stress_fact(4).
0.4 :: asthma_fact(4).

smokes(X) :- stress(X), stress_fact(X).
smokes(X) :- influences(Y,X), smokes(Y).
asthma_rule(X):- smokes(X), asthma_fact(X).
asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).
ill(X)  :- smokes(X), asthma(X), \+ n_ill(X).
n_ill(X):- smokes(X), asthma(X), pred, \+ ill(X).

"""
    learnable = [
        "influences(1,2)",
        "influences(2,1)",
        "influences(2,3)",
        "influences(3,4)"
    ]
    to_show = """ """
    setup_program(program + to_show, learnable, n_interpretations)

def generate_smokers_6(n_interpretations : int):
    """
    Generates the smokers 6 dataset.
    """

    program = """
% Dataset smokers of size 6

0.1 :: asthma_f(1).
0.1 :: asthma_f(2).
0.3 :: stress(1).
0.3 :: stress(2).
0.4 :: stress_fact(1).
0.4 :: stress_fact(2).
0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).
0.2 :: pred.
0.1 :: asthma_f(3).
0.3 :: stress(3).
0.4 :: stress_fact(3).
0.4 :: asthma_fact(3).
0.1 :: asthma_f(4).
0.3 :: stress(4).
0.4 :: stress_fact(4).
0.4 :: asthma_fact(4).

smokes(X) :- stress(X), stress_fact(X).
smokes(X) :- influences(Y,X), smokes(Y).
asthma_rule(X):- smokes(X), asthma_fact(X).
asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).
ill(X)  :- smokes(X), asthma(X), \+ n_ill(X).
n_ill(X):- smokes(X), asthma(X), pred, \+ ill(X).

"""
    learnable = [
        "influences(1,2)",
        "influences(2,1)",
        "influences(2,3)",
        "influences(3,4)",
        "influences(4,1)"
    ]
    to_show = """ """
    setup_program(program + to_show, learnable, n_interpretations)


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
        if args.s == 4:
            generate_coloring_4(args.n)
        else:
            generate_coloring_5(args.n)



if __name__ == "__main__":
    main()
