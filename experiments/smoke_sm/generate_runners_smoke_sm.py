

def printer(idx : int, l_in : 'list[str]', filename : str, method : str):
    fp = open(f"run_{idx}_{method}.sh", "w")
    fp_noc = open(f"run_{idx}_{method}_noc.sh", "w")
    # write the preamble
    m = "s" if method == "SLSQP" else "c"
    
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=sm_{idx}_{m}\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=sm_{idx}_{m}.log\n\n"
    
    fp.write(preamble)
    
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=sm_{idx}_noc_{m}\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=sm_{idx}_no_constr_{m}.log\n\n"
    fp_noc.write(preamble)
    
    fp.write("echo \"Started at: \" \ndate\n\n")
    fp_noc.write("echo \"Started at: \" \ndate\n\n")
    
    i = len(l_in) + 1
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

l_1 = ["influences(1,2)","influences(2,1)"]
l_2 = l_1
l_3 = l_1
l_4 = l_1 + ["influences(2,3)"]
l_5 = l_4 + ["influences(3,4)"]
l_6 = l_5 + ["influences(4,1)"]

l_sz = [l_1,l_2,l_3,l_4,l_5,l_6]
l_fnames = [f"t{i}.lp" for i in range(1,7)]
# filename_25 = "inst_25.lp"

for idx, l, f in zip(list(range(1,7)),l_sz, l_fnames):
    for m in ["SLSQP","COBYLA"]:
        printer(idx, l, f, m)

