
def printer(l_in : 'list[str]', filename : str, method : str):
    fp = open(f"run_{len(l_in)}_{method}_strict.sh", "w")
    fp_noc = open(f"run_{len(l_in)}_{method}_loose.sh", "w")
    # write the preamble
    m = "s" if method == "SLSQP" else "c"
    
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=qr_{m}_c{len(l_in)}_strict\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=qr_nqr_clauses_{method}_{len(l_in)}_strict.log\n\n"
    fp.write(preamble)
    
    preamble = "#!/bin/bash\n" + \
            f"#SBATCH --job-name=qr_{m}_c{len(l_in)}_loose\n" + \
            "#SBATCH --ntasks=1\n" + \
            "#SBATCH --mem=16gb\n" + \
            "#SBATCH --partition=longrun\n" + \
            f"#SBATCH --output=qr_nqr_clauses_{method}_{len(l_in)}_loose.log\n\n"
    fp_noc.write(preamble)
    
    fp.write("echo \"Started at: \" \ndate\n\n")
    fp_noc.write("echo \"Started at: \" \ndate\n\n")
    
    for i in range(2, len(l_in) + 1):
        sl = l_in[0:i]
        of = ' '.join([f"\"{x}\"" for x in sl])
        fp.write(f"echo \"Instance: {i}\"\n")
        fp_noc.write(f"echo \"Instance: {i}\"\n")
        s = f"time python runner.py {filename} {method} strict {of}"
        print(s)
        fp.write(s + "\n")
        s = f"time python runner.py {filename} {method} loose {of}"
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
