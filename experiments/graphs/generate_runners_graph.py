
def printer(l_in : 'list[str]', filename : str, method : str):
    fp = open(f"run_{len(l_in)}_{method}.sh", "w")
    
    preamble = "#!/bin/bash\n" + \
            f"#SBATCH --job-name=graph_{len(l_in)}\n" + \
            "#SBATCH --ntasks=1\n" + \
            "#SBATCH --mem=8gb\n" + \
            "#SBATCH --partition=longrun\n" + \
            f"#SBATCH --output=graph_{len(l_in)}.log\n\n"
    
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
    

l_10 = ["edge(1,2)", "edge(1,3)", "edge(2,4)", "edge(3,5)", "edge(4,6)", "edge(5,6)", "edge(6,7)", "edge(6,8)", "edge(7,9)", "edge(8,9)"]
filename_10 = "inst_10.lp"

l_15 = l_10 + ["edge(9,10)", "edge(9,11)", "edge(10,12)", "edge(11,13)", "edge(12,13)"]
filename_15 = "inst_15.lp"

l_20 = l_15 + ["edge(13,14)", "edge(14,17)", "edge(13,15)", "edge(15,16)", "edge(17,16)"]
filename_20 = "inst_20.lp"

l_25 = l_20 + ["edge(17,18)","edge(17,19)","edge(18,20)","edge(19,21)","edge(20,21)"]
filename_25 = "inst_25.lp"

for l, f in zip([l_10,l_15,l_20,l_25],[filename_10,filename_15,filename_20,filename_25]):
    for m in ["SLSQP","COBYLA"]:
        printer(l, f, m)
