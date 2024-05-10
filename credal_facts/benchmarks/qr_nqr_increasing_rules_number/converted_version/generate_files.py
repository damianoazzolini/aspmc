import sys

# npf = int(sys.argv[1])

credal_facts : "dict[str,tuple[float,float]]" = {}

base_10 = """
qr:- a0.
qr :- a1, \+ nqr.
nqr :- a1, \+ qr.
qr:- a2.
qr :- a3, \+ nqr.
nqr :- a3, \+ qr.
qr:- a4.
qr :- a5, \+ nqr.
nqr :- a5, \+ qr.
qr:- a6.
qr :- a7, \+ nqr.
nqr :- a7, \+ qr.
qr:- a8.
qr :- a9, \+ nqr.
nqr :- a9, \+ qr.
"""

base_15 = """
qr:- a0.
qr :- a1, \+ nqr.
nqr :- a1, \+ qr.
qr:- a2.
qr :- a3, \+ nqr.
nqr :- a3, \+ qr.
qr:- a4.
qr :- a5, \+ nqr.
nqr :- a5, \+ qr.
qr:- a6.
qr :- a7, \+ nqr.
nqr :- a7, \+ qr.
qr:- a8.
qr :- a9, \+ nqr.
nqr :- a9, \+ qr.
qr:- a10.
qr :- a11, \+ nqr.
nqr :- a11, \+ qr.
qr:- a12.
qr :- a13, \+ nqr.
nqr :- a13, \+ qr.
qr:- a14.

"""

base_20 = """
qr:- a0.
qr :- a1, \+ nqr.
nqr :- a1, \+ qr.
qr:- a2.
qr :- a3, \+ nqr.
nqr :- a3, \+ qr.
qr:- a4.
qr :- a5, \+ nqr.
nqr :- a5, \+ qr.
qr:- a6.
qr :- a7, \+ nqr.
nqr :- a7, \+ qr.
qr:- a8.
qr :- a9, \+ nqr.
nqr :- a9, \+ qr.
qr:- a10.
qr :- a11, \+ nqr.
nqr :- a11, \+ qr.
qr:- a12.
qr :- a13, \+ nqr.
nqr :- a13, \+ qr.
qr:- a14.
qr :- a15, \+ nqr.
nqr :- a15, \+ qr.
qr:- a16.
qr :- a17, \+ nqr.
nqr :- a17, \+ qr.
qr:- a18.
qr :- a19, \+ nqr.
nqr :- a19, \+ qr.

"""

base_25 = """
qr:- a0.
qr :- a1, \+ nqr.
nqr :- a1, \+ qr.
qr:- a2.
qr :- a3, \+ nqr.
nqr :- a3, \+ qr.
qr:- a4.
qr :- a5, \+ nqr.
nqr :- a5, \+ qr.
qr:- a6.
qr :- a7, \+ nqr.
nqr :- a7, \+ qr.
qr:- a8.
qr :- a9, \+ nqr.
nqr :- a9, \+ qr.
qr:- a10.
qr :- a11, \+ nqr.
nqr :- a11, \+ qr.
qr:- a12.
qr :- a13, \+ nqr.
nqr :- a13, \+ qr.
qr:- a14.
qr :- a15, \+ nqr.
nqr :- a15, \+ qr.
qr:- a16.
qr :- a17, \+ nqr.
nqr :- a17, \+ qr.
qr:- a18.
qr :- a19, \+ nqr.
nqr :- a19, \+ qr.
qr:- a20.
qr :- a21, \+ nqr.
nqr :- a21, \+ qr.
qr:- a22.
qr :- a23, \+ nqr.
nqr :- a23, \+ qr.
qr:- a24.


"""

base_30 = """
qr:- a0.
qr :- a1, \+ nqr.
nqr :- a1, \+ qr.
qr:- a2.
qr :- a3, \+ nqr.
nqr :- a3, \+ qr.
qr:- a4.
qr :- a5, \+ nqr.
nqr :- a5, \+ qr.
qr:- a6.
qr :- a7, \+ nqr.
nqr :- a7, \+ qr.
qr:- a8.
qr :- a9, \+ nqr.
nqr :- a9, \+ qr.
qr:- a10.
qr :- a11, \+ nqr.
nqr :- a11, \+ qr.
qr:- a12.
qr :- a13, \+ nqr.
nqr :- a13, \+ qr.
qr:- a14.
qr :- a15, \+ nqr.
nqr :- a15, \+ qr.
qr:- a16.
qr :- a17, \+ nqr.
nqr :- a17, \+ qr.
qr:- a18.
qr :- a19, \+ nqr.
nqr :- a19, \+ qr.
qr:- a20.
qr :- a21, \+ nqr.
nqr :- a21, \+ qr.
qr:- a22.
qr :- a23, \+ nqr.
nqr :- a23, \+ qr.
qr:- a24.
qr :- a25, \+ nqr.
nqr :- a25, \+ qr.
qr:- a26.
qr :- a27, \+ nqr.
nqr :- a27, \+ qr.
qr:- a28.
qr :- a29, \+ nqr.
nqr :- a29, \+ qr.

"""

bases = [base_10, base_15, base_20, base_25, base_30]

for npf, base in zip([10,15,20,25,30],[base_10, base_15, base_20, base_25, base_30]):

    for n_credal in range(1, npf + 1):
        fp = open(f"qr_inc_number_{npf}_{n_credal}_converted.lp", "w")
        
        for k in range(0, n_credal):
            credal_facts[f"a{k}"] = (0.45,0.55)

        for k in range(n_credal, npf):
            fp.write(f"0.99::a{k}.\n")

        fp.write("\n")
        
        for i, (k, v) in enumerate(credal_facts.items()):
            # convert
            # print(k,v)
            alpha = v[0]
            beta = v[1]
            alpha = 0.45
            one_minus_beta = 0.45
            beta_minus_alpha = 0.10
            ad = f"{alpha}::v{k}0 ; {one_minus_beta}::v{k}1 ; {beta_minus_alpha}::v{k}2."
            r0 = f"{k} :- v{k}0."
            r1 = f"n_{k} :- v{k}1."
            # r2 = f"{k} ; n_{k} :- v{k}2."
            r20 = f"{k} :- v{k}2, \+ n_{k}."
            r21 = f"n_{k} :- v{k}2, \+ {k}."
            fp.write(ad + "\n")
            fp.write(r0 + "\n")
            fp.write(r1 + "\n")
            fp.write(r20 + "\n")
            fp.write(r21 + "\n")

        fp.write(base)
        fp.write("\nquery(qr).\n")
        fp.close()