# generates the runners
fnames_list : 'list[str]' = []

for sz in range(1, 7):
    fname = f"runner_smk_{sz}_dpasp.sh"
    fp = open(fname, "w")
    fnames_list.append(fname)
    
    fp.write(
f'''#!/bin/bash
#SBATCH --job-name=smk{sz}
#SBATCH --ntasks=1
#SBATCH --mem=16gb
#SBATCH --partition=longrun
#SBATCH --output=smk_{sz}_dpasp_converted.log

echo "Started at: "
date

time pasp t{sz}_converted.lp

echo "Ended at: "
date
''')
        
    fp.close()


# generates the sbatcher
fp = open("sbatcher_smk_dpasp.sh", "w")

for l in fnames_list:
    fp.write("sbatch " + l)
    fp.write("\n")

fp.close()
