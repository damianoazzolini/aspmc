def printer(idx_sz : int, idx_inst : int, method : str):
    fp = open(f"run_{idx_inst}_{method}_ad.sh", "w")
    # write the preamble
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=sm_{idx_inst}_ad\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=sm_{idx_inst}_{method}_ad.log\n\n"
    
    fp.write(preamble)
    
    fp.write("echo \"Started at: \" \ndate\n\n")
    
    fp.write(f"time python 0_runner.py t{idx_inst}.lp {method} {idx_sz}")

    fp.write("\necho \"Ended at: \" \ndate\n")
    
    fp.close()

import sys

method = sys.argv[1]
if method != "SLSQP" and method != "COBYLA":
    print("Supported methods: SLSQP and COBYLA")
    
szs = [2,2,2,3,4,4]

for sz, inst in zip(szs,list(range(1,7))):
    printer(sz, inst, method)

