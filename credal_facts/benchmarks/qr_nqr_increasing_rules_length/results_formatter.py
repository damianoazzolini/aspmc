# import sys

# filename = sys.argv[1]

def pretty_print(filename : str):
    fp = open(filename, "r")
    lines = fp.readlines()
    fp.close()

    l : 'list[str]' = []
    ll = []

    for line in lines:
        line = line.rstrip()
        if line.startswith("Instance"):
            if l != []:
                ll.append(l)
            l = []
            # print(line)
            l.append(line.split("Instance ")[1])
        elif line.startswith("nnf_construction_time"):
            # print(line)
            l.append(line.split("nnf_construction_time: ")[1])
        # elif line.startswith("Pre simplification"):
            # print(line)
        elif line.startswith("number of sums"):
            # print(line)
            l.append(line.split("number of sums: ")[1])
        elif line.startswith("number of subs"):
            # print(line)
            l.append(line.split("number of subs: ")[1])
        elif line.startswith("number of prods"):
            # print(line)
            l.append(line.split("number of prods: ")[1])
        # elif line.startswith("Post simplification"):
            # print(line)
        elif line.startswith("symp_time"):
            # print(line)
            l.append(line.split("symp_time: ")[1])
        elif line.startswith("opt_time:"):
            l.append(line.split("opt_time: ")[1])
        elif line.startswith(" success:"):
            # print(line)
            res = '1' if line.split(" success: ")[1] == "True" else '0'
            l.append(res)
        elif line.startswith("real"):
            # print(line)
            line = line.split("real")[1]
            ln = line.replace('\t','')
            m = int(ln.split('m')[0])
            s = float(ln.split('m')[1][:-1])
            
            l.append(f"{m*60+s}")

    ll.append(l)

    fp = open(f"{filename}.cleaned","w")
    for l in ll:
        to_p = ','.join(l)
        print(to_p)
        fp.write(to_p + '\n')
    fp.close()
    
#######################
filenames_list = [
"qr_nqr_rules_COBYLA_10_strict.log",
"qr_nqr_rules_COBYLA_10_loose.log",
"qr_nqr_rules_COBYLA_15_strict.log",
"qr_nqr_rules_COBYLA_15_loose.log",
"qr_nqr_rules_COBYLA_20_strict.log",
"qr_nqr_rules_COBYLA_20_loose.log",
"qr_nqr_rules_COBYLA_25_strict.log",
"qr_nqr_rules_COBYLA_25_loose.log",
"qr_nqr_rules_COBYLA_30_strict.log",
"qr_nqr_rules_COBYLA_30_loose.log",
"qr_nqr_rules_SLSQP_10_strict.log",
"qr_nqr_rules_SLSQP_10_loose.log",
"qr_nqr_rules_SLSQP_15_strict.log",
"qr_nqr_rules_SLSQP_15_loose.log",
"qr_nqr_rules_SLSQP_20_strict.log",
"qr_nqr_rules_SLSQP_20_loose.log",
"qr_nqr_rules_SLSQP_25_strict.log",
"qr_nqr_rules_SLSQP_25_loose.log",
"qr_nqr_rules_SLSQP_30_strict.log",
"qr_nqr_rules_SLSQP_30_loose.log"
]


for fname in filenames_list:
    print(f"Cleaning {fname}")
    pretty_print(fname)

print("run: zip res.zip *.cleaned")

# import subprocess
# subprocess.call(["zip", "res_graph.zip", "*.cleaned"])
