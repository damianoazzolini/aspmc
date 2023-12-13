
def printer(l_in : 'list[str]', filename : str, method : str):
    fp = open(f"run_{len(l_in)}_{method}.sh", "w")
    # write the preamble
    m = "s" if method == "SLSQP" else "c"
    
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=smk\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=8gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=smk_{method}_{len(l_in)}.log\n\n"
    
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

l0 = ["influences(1, 2)", "influences(2, 1)"]
l1 = ["influences(1, 2)", "influences(2, 1)"]
l2 = ["influences(1, 2)", "influences(2, 1)"]
l3 = ["influences(1, 2)", "influences(2, 1)", "influences(2,3)"]
l4 = ["influences(1, 2)", "influences(2, 1)", "influences(2,3)", "influences(3,4)"]
l5 = ["influences(1, 2)", "influences(2, 1)", "influences(2,3)", "influences(3,4)", "influences(4,1)"]

l_l_opt = [l0,l1,l2,l3,l4,l5]

# sz = [10,15,20,25,30]
for i in range(0,6):
    l_fnames.append(f"smokers_{i}.lp")

for l, f in zip(l_l_opt,l_fnames):
    for m in ["SLSQP","COBYLA"]:
        printer(l, f, m)
