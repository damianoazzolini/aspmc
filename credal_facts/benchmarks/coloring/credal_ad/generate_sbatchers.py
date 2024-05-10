def printer(idx_sz : int, method : str):
    fp = open(f"run_{idx_sz}_{method}_ad.sh", "w")
    # write the preamble
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=sm_{idx_sz}_ad\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=sm_{idx_sz}_{method}_ad.log\n\n"
    
    fp.write(preamble)
    
    fp.write("echo \"Started at: \" \ndate\n\n")
    
    fp.write(f"time python 0_runner.py sm_gc_{idx_sz}_pf.lp {method} {idx_sz}")

    fp.write("\necho \"Ended at: \" \ndate\n")
    
    fp.close()

import sys

method = sys.argv[1]
if method != "SLSQP" and method != "COBYLA":
    print("Supported methods: SLSQP and COBYLA")

for sz in range(6,19):
    printer(sz, method)

