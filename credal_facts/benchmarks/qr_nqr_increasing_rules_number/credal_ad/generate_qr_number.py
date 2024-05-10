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
        credal_facts = {}
        fp = open(f"qr_inc_numb_{npf}_{n_credal}_ad.lp", "w")
        
        for k in range(0, n_credal):
            credal_facts[f"a{k}"] = (0,1)

        for k in range(n_credal, npf):
            fp.write(f"0.03::a{k}.\n")

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