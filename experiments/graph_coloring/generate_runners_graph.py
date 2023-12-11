

def printer(idx : int, l_in : 'list[str]', filename : str, method : str):
    fp = open(f"run_{idx}_{method}.sh", "w")
    fp_noc = open(f"run_{idx}_{method}_noc.sh", "w")
    # write the preamble
    m = "s" if method == "SLSQP" else "c"
    
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=coloring_{idx}_{m}\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=sm_{idx}_{m}.log\n\n"
    
    fp.write(preamble)
    
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=coloring_{idx}_noc_{m}\n" + \
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
    to_p = f"echo \"Instance {idx}\"\n"
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

# l_6 = ["influences(1,2)","influences(2,1)"]

l_6 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(1,5)"
]

l_7 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(3,7)",
"edge(1,4)"    
]

l_8 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(5,7)",
"edge(3,7)",
"edge(3,5)"
]

l_9 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(3,7)",
"edge(4,9)",
"edge(3,5)",
"edge(7,9)"
]

l_10 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(2,9)",
"edge(5,7)",
"edge(5,10)",
"edge(5,9)",
"edge(4,7)"    
]

l_11 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(3,10)",
"edge(6,11)",
"edge(2,11)",
"edge(6,10)",
"edge(2,8)",
"edge(1,5)"   
]

l_12 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(2,12)",
"edge(9,10)",
"edge(3,10)",
"edge(4,8)",
"edge(7,12)",
"edge(5,8)",
"edge(1,4)"
]

l_13 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(2,8)",
"edge(6,7)",
"edge(8,13)",
"edge(1,10)",
"edge(8,9)",
"edge(8,12)",
"edge(2,10)",
"edge(11,12)"
]

l_14 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(1,5)",
"edge(5,10)",
"edge(9,10)",
"edge(7,13)",
"edge(10,11)",
"edge(3,5)",
"edge(1,10)",
"edge(5,8)",
"edge(6,7)"
]

l_15 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(3,9)",
"edge(5,14)",
"edge(6,12)",
"edge(11,13)",
"edge(7,14)",
"edge(5,9)",
"edge(4,13)",
"edge(3,15)",
"edge(7,9)",
"edge(14,15)"
]

l_16 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(7,11)",
"edge(12,14)",
"edge(5,12)",
"edge(4,6)",
"edge(2,15)",
"edge(11,16)",
"edge(6,12)",
"edge(7,12)",
"edge(1,9)",
"edge(9,10)",
"edge(9,12)"
]

l_17 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(8,9)",
"edge(2,14)",
"edge(6,12)",
"edge(2,9)",
"edge(5,15)",
"edge(2,17)",
"edge(5,10)",
"edge(11,12)",
"edge(6,8)",
"edge(1,8)",
"edge(7,13)",
"edge(3,10)"
]

l_18 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(2,12)",
"edge(8,10)",
"edge(14,16)",
"edge(3,13)",
"edge(6,9)",
"edge(8,11)",
"edge(10,18)",
"edge(14,15)",
"edge(8,17)",
"edge(4,17)",
"edge(5,13)",
"edge(1,12)",
"edge(1,15)"
]

l_19 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(7,10)",
"edge(5,10)",
"edge(3,7)",
"edge(13,18)",
"edge(15,18)",
"edge(14,16)",
"edge(1,14)",
"edge(3,17)",
"edge(1,15)",
"edge(13,16)",
"edge(4,11)",
"edge(8,17)",
"edge(7,19)",
"edge(11,17)"
]

l_20 = [
"edge(1,2)",
"edge(1,3)",
"edge(2,5)",
"edge(2,6)",
"edge(3,4)",
"edge(4,5)",
"edge(5,6)",
"edge(9,18)",
"edge(12,13)",
"edge(17,18)",
"edge(8,12)",
"edge(4,13)",
"edge(4,16)",
"edge(8,18)",
"edge(4,15)",
"edge(12,14)",
"edge(6,20)",
"edge(6,12)",
"edge(13,16)",
"edge(15,20)",
"edge(2,10)",
"edge(11,12)"
]

l_sz = [l_6,l_7,l_8,l_9,l_10,l_11,l_12,l_13,l_14,l_15,l_16,l_17,l_18,l_19,l_20]
l_fnames = [f"sm_gc_{i}_pf.lp" for i in range(6,21)]
# filename_25 = "inst_25.lp"

for idx, l, f in zip(list(range(6,21)),l_sz, l_fnames):
    for m in ["SLSQP","COBYLA"]:
        printer(idx, l, f, m)

