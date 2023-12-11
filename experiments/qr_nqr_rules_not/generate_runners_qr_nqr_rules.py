
def printer(l_in : 'list[str]', filename : str, method : str):
    fp = open(f"run_{len(l_in)}_{method}.sh", "w")
    fp_noc = open(f"run_{len(l_in)}_{method}_noc.sh", "w")
    # write the preamble
    m = "s" if method == "SLSQP" else "c"
    
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=qr_{m}_rn{len(l_in)}_c\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=qr_nqr_rules_not_{method}_{len(l_in)}_constr.log\n\n"
    fp.write(preamble)
    
    preamble = "#!/bin/bash\n" + \
            f"#SBATCH --job-name=qr_{m}_rn{len(l_in)}_noc\n" + \
            "#SBATCH --ntasks=1\n" + \
            "#SBATCH --mem=16gb\n" + \
            "#SBATCH --partition=longrun\n" + \
            f"#SBATCH --output=qr_nqr_rules_not_{method}_{len(l_in)}_no_constr.log\n\n"
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


l_l_opt : 'list[list[str]]' = []
l_fnames : 'list[str]' = []
sz = [10,15,20,25,30]
for n in sz:
    l_l_opt.append([f"a{i}" for i in range(0,n)])
    l_fnames.append(f"t1_{n}_pf.lp")

for l, f in zip(l_l_opt,l_fnames):
    for m in ["SLSQP","COBYLA"]:
        printer(l, f, m)
