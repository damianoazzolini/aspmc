import sys

# npf = int(sys.argv[1])

credal_facts : "dict[str,tuple[float,float]]" = {}

base_10 = """
qr:- a0, a2, a4, a6, a8.
qr:- a1, a3, a5, a7, a9, \+ nqr.
nqr:- a1, a3, a5, a7, a9, \+ qr.

"""

base_15 = """
qr:- a0, a2, a4, a6, a8, a10, a12, a14.
qr:- a1, a3, a5, a7, a9, a11, a13, \+ nqr.
nqr:- a1, a3, a5, a7, a9, a11, a13, \+ qr.

"""

base_20 = """
qr:- a0, a2, a4, a6, a8, a10, a12, a14, a16, a18.
qr:- a1, a3, a5, a7, a9, a11, a13, a15, a17, a19, \+ nqr.
nqr:- a1, a3, a5, a7, a9, a11, a13, a15, a17, a19, \+ qr.

"""

base_25 = """
qr:- a0, a2, a4, a6, a8, a10, a12, a14, a16, a18, a20, a22, a24.
qr:- a1, a3, a5, a7, a9, a11, a13, a15, a17, a19, a21, a23, \+ nqr.
nqr:- a1, a3, a5, a7, a9, a11, a13, a15, a17, a19, a21, a23, \+ qr.

"""

base_30 = """
qr:- a0, a2, a4, a6, a8, a10, a12, a14, a16, a18, a20, a22, a24, a26, a28.
qr:- a1, a3, a5, a7, a9, a11, a13, a15, a17, a19, a21, a23, a25, a27, a29, \+ nqr.
nqr:- a1, a3, a5, a7, a9, a11, a13, a15, a17, a19, a21, a23, a25, a27, a29, \+ qr.

"""

bases = [base_10, base_15, base_20, base_25, base_30]

for npf, base in zip([10,15,20,25,30],[base_10, base_15, base_20, base_25, base_30]):

    for n_credal in range(1, npf + 1):
        fp = open(f"qr_inc_len_{npf}_{n_credal}_converted.lp", "w")
        
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