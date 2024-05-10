

def printer(idx : int):
    fp = open(f"run_{idx}_converted.sh", "w")
    
    preamble = "#!/bin/bash\n" + \
               f"#SBATCH --job-name=coloring_{idx}_converted\n" + \
               "#SBATCH --ntasks=1\n" + \
               "#SBATCH --mem=16gb\n" + \
               "#SBATCH --partition=longrun\n" + \
               f"#SBATCH --output=sm_{idx}_converted.log\n\n"
    
    fp.write(preamble)
    

    fp.write("echo \"Started at: \" \ndate\n\n")
    
    fp.write(f"time aspmc -m smproblog sm_gc_{idx}_fp_converted.lp -c -k c2d")
    
        
    fp.write("\necho \"Ended at: \" \ndate\n")
    
    fp.close()

# l_6 = ["influences(1,2)","influences(2,1)"]


for idx in range(6,15):
    printer(idx)

