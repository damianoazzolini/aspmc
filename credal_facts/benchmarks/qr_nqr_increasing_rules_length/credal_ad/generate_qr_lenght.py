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
        credal_facts = {}
        fp = open(f"qr_inc_len_{npf}_{n_credal}_ad.lp", "w")
        
        for k in range(0, n_credal):
            credal_facts[f"a{k}"] = (0,1)

        for k in range(n_credal, npf):
            fp.write(f"0.99::a{k}.\n")

        fp.write("\n")
        
        for i, (k, v) in enumerate(credal_facts.items()):
            # convert
            # print(k,v)
            f = f"0.5::va{i}.\n0.5::vb{i}.\n"
            if i % 3 == 0:
                r0 = f"a{i} :- va{i}."
                r1 = f"a1{i} :- \+ va{i}, vb{i}."
                r2 = f"a2{i} :- \+ va{i}, \+ vb{i}."
            elif i % 3 == 1:
                r0 = f"a0{i} :- va{i}."
                r1 = f"a{i} :- \+ va{i}, vb{i}."
                r2 = f"a2{i} :- \+ va{i}, \+ vb{i}."
            elif i % 3 == 2:
                r0 = f"a0{i} :- va{i}."
                r1 = f"a1{i} :- \+ va{i}, vb{i}."
                r2 = f"a{i} :- \+ va{i}, \+ vb{i}."

            fp.write(f + "\n")
            fp.write(r0 + "\n")
            fp.write(r1 + "\n")
            fp.write(r2 + "\n\n")

        fp.write(base)
        # fp.write("\nquery(qr).\n")
        fp.close()