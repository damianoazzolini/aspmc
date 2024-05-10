# each credal fact $[\alpha,\beta]::a(1)$ can be converted into an annotated disjunction 
# $\alpha::v(1) ; 1 - \beta::v(2) ; \beta - \alpha::v(3)$ 
# and three rules
# $a(1) \impl v(1)$, 
# $a(0) \impl v(2)$, and 
# $a(1); a(0) \impl m(3)$.

import sys


credal_facts : "dict[str,tuple[float,float]]" = {}

e6 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(1,5)"
]

e7 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(3,7)",
    "edge(1,4)"
]

e8 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(5,7)",
    "edge(3,7)",
    "edge(3,5)"
]

e9 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(3,7)",
    "edge(4,9)",
    "edge(3,5)",
    "edge(7,9)"
]

e10 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(2,9)",
    "edge(5,7)",
    "edge(5,10)",
    "edge(5,9)",
    "edge(4,7)",
]

e11 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(3,10)",
    "edge(6,11)",
    "edge(2,11)",
    "edge(6,10)",
    "edge(2,8)",
    "edge(1,8)"
]

e12 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(2,12)",
    "edge(9,10)",
    "edge(3,10)",
    "edge(4,8)",
    "edge(7,12)",
    "edge(5,8)",
    "edge(1,4)"
]

e13 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(2,8)",
    "edge(6,7)",
    "edge(8,13)",
    "edge(1,10)",
    "edge(8,9)",
    "edge(8,12)",
    "edge(2,10)",
    "edge(11,12)"
]

e14 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(1,13)",
    "edge(5,10)",
    "edge(9,10)",
    "edge(7,13)",
    "edge(10,11)",
    "edge(3,7)",
    "edge(1,10)",
    "edge(5,8)",
    "edge(6,7)"
]

e15 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(3,9)",
    "edge(5,14)",
    "edge(6,12)",
    "edge(11,13)",
    "edge(7,14)",
    "edge(5,9)",
    "edge(4,13)",
    "edge(3,15)",
    "edge(7,9)",
    "edge(14,15)"
]

e16 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(7,11)",
    "edge(12,14)",
    "edge(5,12)",
    "edge(4,6)",
    "edge(2,15)",
    "edge(11,16)",
    "edge(6,12)",
    "edge(7,12)",
    "edge(1,9)",
    "edge(9,10)",
    "edge(9,12)"
]

e17 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(8,9)",
    "edge(2,14)",
    "edge(6,12)",
    "edge(2,9)",
    "edge(5,15)",
    "edge(2,17)",
    "edge(5,10)",
    "edge(11,12)",
    "edge(6,8)",
    "edge(1,8)",
    "edge(7,13)",
    "edge(3,10)"
]

e18 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(2,12)",
    "edge(8,10)",
    "edge(14,16)",
    "edge(3,13)",
    "edge(6,9)",
    "edge(8,11)",
    "edge(10,18)",
    "edge(14,15)",
    "edge(8,17)",
    "edge(4,17)",
    "edge(5,13)",
    "edge(1,12)",
    "edge(1,15)"
]

e19 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(7,10)",
    "edge(5,10)",
    "edge(3,7)",
    "edge(13,18)",
    "edge(15,18)",
    "edge(14,16)",
    "edge(1,14)",
    "edge(3,17)",
    "edge(1,15)",
    "edge(13,16)",
    "edge(4,11)",
    "edge(8,17)",
    "edge(7,19)",
    "edge(11,17)"
]

e20 = [
    "edge(1,2)",
    "edge(1,3)",
    "edge(2,5)",
    "edge(2,6)",
    "edge(3,4)",
    "edge(4,5)",
    "edge(5,6)",
    "edge(9,18)",
    "edge(12,13)",
    "edge(17,18)",
    "edge(8,12)",
    "edge(4,13)",
    "edge(4,16)",
    "edge(8,18)",
    "edge(4,15)",
    "edge(12,14)",
    "edge(6,20)",
    "edge(6,12)",
    "edge(13,16)",
    "edge(15,20)",
    "edge(2,10)",
    "edge(11,12)"
]

l_edges = [e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19,e20]

base = """
red(X) :- node(X), \+ green(X), \+ blue(X).
green(X) :- node(X), \+ red(X), \+ blue(X).
blue(X) :- node(X), \+ red(X), \+ green(X).

e(X,Y) :- edge(X,Y).
e(Y,X) :- edge(Y,X).

:- e(X,Y), red(X), red(Y).
:- e(X,Y), green(X), green(Y).
:- e(X,Y), blue(X), blue(Y).

red(1).
green(4).
green(6).

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
node(14).
node(15).

qr:- blue(1).
qr:- blue(3).
qr:- blue(5).
qr:- blue(7).
qr:- blue(9).
qr:- blue(11).
qr:- blue(13).
qr:- blue(15).

"""

for idx, le in enumerate(l_edges):
    credal_facts = {}
    for edg in le:
        credal_facts[edg] = (0.45,0.55)
    
    fp = open(f"sm_gc_{idx + 6}_fp_converted.lp", "w")
    fp.write(base)

    for i, (k, v) in enumerate(credal_facts.items()):
        # convert
        # print(k,v)
        alpha = v[0]
        beta = v[1]
        ad = f"{alpha}::a{k} ; {1 - beta}::b{k} ; {beta - alpha}::c{k}."
        r0 = f"{k} :- a{k}."
        r1 = f"n_{k} :- b{k}."
        # r2 = f"{k} ; n_{k} :- c{k}."
        r20 = f"{k} :- c{k}, \+ n_{k}."
        r21 = f"n_{k} :- c{k}, \+ {k}."
        
        fp.write(ad + "\n")
        fp.write(r0 + "\n")
        fp.write(r1 + "\n")
        fp.write(r20 + "\n")
        fp.write(r21 + "\n")
        
    fp.close()