# import sys

# filename = sys.argv[1]

def pretty_print(filename : str, fp_out):
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
        elif line.startswith("number of sub"):
            # print(line)
            l.append(line.split("number of sub: ")[1])
        elif line.startswith("number of prods"):
            # print(line)
            l.append(line.split("number of prods: ")[1])
        # elif line.startswith("Post simplification"):
            # print(line)
        elif line.startswith("symp_time"):
            # print(line)
            l.append(line.split("symp_time: ")[1])
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

    # fp = open(f"{filename}.cleaned","w")
    # for l in ll:
    to_p = ','.join(l)
    print(to_p)
    fp_out.write(to_p + '\n')
    # fp.close()
    
#######################


fn_cobyla_constr = [
"coloring_7_COBYLA_eps.log",
"coloring_8_COBYLA_eps.log",
"coloring_9_COBYLA_eps.log"
# "coloring_10_COBYLA_eps.log",
# "coloring_11_COBYLA_eps.log",
# "coloring_12_COBYLA_eps.log"
]

fn_slsqp_constr = [
"coloring_7_SLSQP_eps.log",
"coloring_8_SLSQP_eps.log",
"coloring_9_SLSQP_eps.log"
# "coloring_10_SLSQP_eps.log",
# "coloring_11_SLSQP_eps.log",
# "coloring_12_SLSQP_eps.log"
]

fn_cobyla_no_constr = [
"coloring_7_COBYLA_no_eps.log",
"coloring_8_COBYLA_no_eps.log",
"coloring_9_COBYLA_no_eps.log"
# "coloring_10_COBYLA_no_eps.log",
# "coloring_11_COBYLA_no_eps.log",
# "coloring_12_COBYLA_no_eps.log"
]

fn_slsqp_no_constr = [
"coloring_7_SLSQP_no_eps.log",
"coloring_8_SLSQP_no_eps.log",
"coloring_9_SLSQP_no_eps.log"
# "coloring_10_SLSQP_no_eps.log",
# "coloring_11_SLSQP_no_eps.log",
# "coloring_12_SLSQP_no_eps.log"
]


l_out = ["gc_cobyla_no_constr.cleaned","gc_slsqp_no_constr.cleaned", "gc_cobyla_constr.cleaned", "gc_slsqp_constr.cleaned"]
l_in = [fn_cobyla_no_constr, fn_slsqp_no_constr, fn_cobyla_constr, fn_slsqp_constr]

for f_out, fn in zip(l_out, l_in):
    f = open(f_out, "w")
    for fll in fn:
        pretty_print(fll, f)
    f.close()

# import subprocess
# subprocess.call(["zip", "res_graph.zip", "*.cleaned"])
