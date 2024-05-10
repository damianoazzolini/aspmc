import sys

# fn = sys.argv[1]
# inst = int(sys.argv[2])

def filter(fn, inst):
    fp = open(fn, "r")
    lines = fp.readlines()
    fp.close()

    fp = open(fn + ".filtered", "w")
    keep = False
    for line in lines:
        if line.startswith(f"Instance {inst}"):
            keep = True
        if keep:
            fp.write(line)
    fp.close()


for alg in ["COBYLA","SLSQP"]:
    for mode in ["strict", "loose"]:
        for sz in [10,15,20,25,30]:
            name =  f"qr_nqr_rules_{alg}_{sz}_{mode}.log"
            filter(name, sz)