

def printer(l_in : 'list[str]', filename : str, method : str):
    fp = open(f"run_{len(l_in)}_{method}.sh", "w")
    fp_noc = open(f"run_{len(l_in)}_{method}_noc.sh", "w")
    # write the preamble
    m = "s" if method == "SLSQP" else "c"
    
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=g_{len(l_in)}_{m}\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=graph_{len(l_in)}_{m}.log\n\n"
    
    fp.write(preamble)
    
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=g_{len(l_in)}_noc_{m}\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=graph_{len(l_in)}_no_constr_{m}.log\n\n"
    fp_noc.write(preamble)
    
    fp.write("echo \"Started at: \" \ndate\n\n")
    fp_noc.write("echo \"Started at: \" \ndate\n\n")
    
    for i in range(2, len(l_in) + 1):
        sl = l_in[0:i]
        of = ' '.join([f"\"{x}\"" for x in sl])
        to_p = f"echo \"Instance {i}\"\n"
        fp.write(to_p)
        s = f"time python runner_with_pair_constr.py {filename} {method} {of}"
        print(s)
        fp.write(s + "\n")
        
        fp_noc.write(to_p)
        s = f"time python runner_without_pair_constr.py {filename} {method} {of}"
        fp_noc.write(s + "\n")
        
    fp.write("\necho \"Ended at: \" \ndate\n")
    fp_noc.write("\necho \"Ended at: \" \ndate\n")
    
    fp.close()
    fp_noc.close()


# l_10 = ["edge(1,2)", "edge(1,3)", "edge(2,4)", "edge(3,5)", "edge(4,6)", "edge(5,6)", "edge(6,7)", "edge(6,8)", "edge(7,9)", "edge(8,9)"]
# filename_10 = "inst_10.lp"

l_5 = ["edge(1,2)", "edge(1,3)", "edge(2,4)", "edge(3,5)", "edge(4,6)"]
filename_5 = "inst_5.lp"

l_6 = l_5 + ["edge(5,6)"]
filename_6 = "inst_6.lp"

l_7 = l_6 + ["edge(6,7)"]
filename_7 = "inst_7.lp"

l_8 = l_7 + ["edge(6,8)"]
filename_8 = "inst_8.lp"

l_9 = l_8 + ["edge(7,9)"]
filename_9 = "inst_9.lp"

l_10 = ["edge(1,2)", "edge(1,3)", "edge(2,4)", "edge(3,5)", "edge(4,6)", "edge(5,6)", "edge(6,7)", "edge(6,8)", "edge(7,9)", "edge(8,9)"]
filename_10 = "inst_10.lp"

l_11 = l_10 + ["edge(9,10)"]
filename_11 = "inst_11.lp"

l_12 = l_11 + ["edge(9,11)"]
filename_12 = "inst_12.lp"

l_13 = l_12 + ["edge(10,12)"]
filename_13 = "inst_13.lp"

l_14 = l_13 + ["edge(11,13)"]
filename_14 = "inst_14.lp"

# l_15 = l_10 + ["edge(9,10)", "edge(9,11)", "edge(10,12)", "edge(11,13)", "edge(12,13)"]
# filename_15 = "inst_15.lp"

# l_20 = l_15 + ["edge(13,14)", "edge(14,17)", "edge(13,15)", "edge(15,16)", "edge(17,16)"]
# filename_20 = "inst_20.lp"

# l_25 = l_20 + ["edge(17,18)","edge(17,19)","edge(18,20)","edge(19,21)","edge(20,21)"]

l_sz = [l_5,l_6,l_7,l_8,l_9,l_10,l_11,l_12,l_13,l_14]
l_fnames = [filename_5, filename_6, filename_7, filename_8, filename_9, filename_10, filename_11, filename_12, filename_13, filename_14]
# filename_25 = "inst_25.lp"

for l, f in zip(l_sz, l_fnames):
    for m in ["SLSQP","COBYLA"]:
        printer(l, f, m)

