# each credal fact $[\alpha,\beta]::a(1)$ can be converted into an annotated disjunction 
# $\alpha::v(1) ; 1 - \beta::v(2) ; \beta - \alpha::v(3)$ 
# and three rules
# $a(1) \impl v(1)$, 
# $a(0) \impl v(2)$, and 
# $a(1); a(0) \impl m(3)$.

import sys

npf = int(sys.argv[1])

credal_facts : "dict[str,tuple[float,float]]" = {}

for i in range(0, npf):
    credal_facts[f"a{i}"] = (0.45,0.55)

for i, (k, v) in enumerate(credal_facts.items()):
    # convert
    # print(k,v)
    alpha = v[0]
    beta = v[1]
    ad = f"{alpha}::v{k}0 ; {1 - beta}::v{k}1 ; {beta - alpha}::v{k}2."
    print(ad)
    r0 = f"{k} :- v{k}0."
    r1 = f"n_{k} :- v{k}1."
    # r2 = f"{k} ; n_{k} :- v{k}2."
    r20 = f"{k} :- v{k}2, \+ n_{k}."
    r21 = f"n_{k} :- v{k}2, \+ {k}."
    print(r0)
    print(r1)
    print(r20)
    print(r21)
    