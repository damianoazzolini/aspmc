

def printer(idx : int):
    fp = open(f"run_{idx}_converted.sh", "w")
    # write the preamble
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=sm_{idx}_converted\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=sm_{idx}_converted.log\n\n"
    
    fp.write(preamble)
    
    fp.write("echo \"Started at: \" \ndate\n\n")
    
    fp.write(f"time aspmc -m smproblog t{idx}_converted.lp -c -k c2d")

    fp.write("\necho \"Ended at: \" \ndate\n")
    
    fp.close()


for idx in range(1,7):
    printer(idx)

