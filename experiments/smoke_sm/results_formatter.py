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

    # fp = open(f"{filename}.cleaned","w")
    # for l in ll:
    to_p = ','.join(l)
    print(to_p)
    fp_out.write(to_p + '\n')
    # fp.close()
    
#######################

fn_cobyla_constr = [
"sm_1_c.log",
"sm_2_c.log",
"sm_3_c.log",
"sm_4_c.log",
"sm_5_c.log",
"sm_6_c.log"
]

fn_slsqp_constr = [
"sm_1_s.log",
"sm_2_s.log",
"sm_3_s.log",
"sm_4_s.log",
"sm_5_s.log",
"sm_6_s.log"
]

fn_cobyla_no_constr = [
"sm_1_no_constr_c.log",
"sm_2_no_constr_c.log",
"sm_3_no_constr_c.log",
"sm_4_no_constr_c.log",
"sm_5_no_constr_c.log",
"sm_6_no_constr_c.log"
]

fn_slsqp_no_constr = [
"sm_1_no_constr_s.log",
"sm_2_no_constr_s.log",
"sm_3_no_constr_s.log",
"sm_4_no_constr_s.log",
"sm_5_no_constr_s.log",
"sm_6_no_constr_s.log"
]

# for fname in filenames_list:
#     print(f"Cleaning {fname}")
#     pretty_print(fname)

# print("run: zip res_graph.zip *.cleaned")

l_out = ["smk_cobyla_no_constr.cleaned","smk_slsqp_no_constr.cleaned", "smk_cobyla_constr.cleaned", "smk_slsqp_constr.cleaned"]
l_in = [fn_cobyla_no_constr, fn_slsqp_no_constr, fn_cobyla_constr, fn_slsqp_constr]

for f_out, fn in zip(l_out, l_in):
    f = open(f_out, "w")
    for fll in fn:
        pretty_print(fll, f)
    f.close()

# import subprocess
# subprocess.call(["zip", "res_graph.zip", "*.cleaned"])
