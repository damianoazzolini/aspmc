def printer(idx_sz : int, idx_cf : int):
    fp = open(f"run_{idx_sz}_{idx_cf}_converted.sh", "w")
    # write the preamble
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=sm_{idx_sz}_converted\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=sm_{idx_sz}_{idx_cf}_converted.log\n\n"
    
    fp.write(preamble)
    
    fp.write("echo \"Started at: \" \ndate\n\n")
    
    fp.write(f"time aspmc -m smproblog qr_inc_len_{idx_sz}_{idx_cf}_converted.lp -c -k c2d")

    fp.write("\necho \"Ended at: \" \ndate\n")
    
    fp.close()


for sz in [10,15,20,25,30]:
    for cf in range(1, sz + 1):
        printer(sz,cf)

