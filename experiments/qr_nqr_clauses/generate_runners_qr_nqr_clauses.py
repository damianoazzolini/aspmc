
def printer(l_in : 'list[str]', filename : str, method : str):
    fp = open(f"run_{len(l_in)}_{method}.sh", "w")
    # write the preamble
    m = "s" if method == "SLSQP" else "c"
    
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=qr_{m}_c{len(l_in)}\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=8gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=qr_nqr_clauses_{method}_{len(l_in)}.log\n\n"
    
    fp.write(preamble)
    
    fp.write("echo \"Started at: \" \ndate\n\n")
    
    for i in range(2, len(l_in) + 1):
        sl = l_in[0:i]
        of = ' '.join([f"\"{x}\"" for x in sl])
        s = f"time python3 prov.py {filename} {method} {of}"
        print(s)
        fp.write(s + "\n")
        
    fp.write("\necho \"Ended at: \" \ndate\n")
    
    fp.close()


l_l_opt : 'list[list[str]]' = []
l_fnames : 'list[str]' = []
sz = [10,15,20,25,30]
for n in sz:
    l_l_opt.append([f"a({i})" for i in range(0,n)])
    l_fnames.append(f"t1_{n}_pf.lp")

for l, f in zip(l_l_opt,l_fnames):
    for m in ["SLSQP","COBYLA"]:
        printer(l, f, m)
