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
"graph_5_c.log",
"graph_5_no_constr_c.log",
"graph_5_no_constr_s.log",
"graph_5_s.log",
"graph_6_c.log",
"graph_6_no_constr_c.log",
"graph_6_no_constr_s.log",
"graph_6_s.log",
"graph_7_c.log",
"graph_7_no_constr_c.log",
"graph_7_no_constr_s.log",
"graph_7_s.log",
"graph_8_c.log",
"graph_8_no_constr_c.log",
"graph_8_no_constr_s.log",
"graph_8_s.log",
"graph_9_c.log",
"graph_9_no_constr_c.log",
"graph_9_no_constr_s.log",
"graph_9_s.log",
"graph_10_c.log",
"graph_10_no_constr_c.log",
"graph_10_no_constr_s.log",
"graph_10_s.log",
"graph_11_c.log",
"graph_11_no_constr_c.log",
"graph_11_no_constr_s.log",
"graph_11_s.log",
"graph_12_c.log",
"graph_12_no_constr_c.log",
"graph_12_no_constr_s.log",
"graph_12_s.log",
"graph_13_c.log",
"graph_13_no_constr_c.log",
"graph_13_no_constr_s.log",
"graph_13_s.log",
"graph_14_c.log",
"graph_14_no_constr_c.log",
"graph_14_no_constr_s.log",
"graph_14_s.log",
"graph_15_c.log",
"graph_15_no_constr_c.log",
"graph_15_no_constr_s.log",
"graph_15_s.log"
]

for fname in filenames_list:
    print(f"Cleaning {fname}")
    pretty_print(fname)

print("run: zip res_graph.zip *.cleaned")

# import subprocess
# subprocess.call(["zip", "res_graph.zip", "*.cleaned"])
