# generates the runners
fnames_list : 'list[str]' = []

for sz in range(1, 7):
    for eps in ["strict","loose"]:
        s = "no_eps" if eps == 0 else "eps"
        fname = f"runner_smoke_{sz}_{eps}.sh"
        fp = open(fname, "w")
        fnames_list.append(fname)
        
        fp.write(
f'''#!/bin/bash
#SBATCH --job-name=smoke{sz}
#SBATCH --ntasks=1
#SBATCH --mem=16gb
#SBATCH --partition=longrun
#SBATCH --output=smoke_{sz}_{eps}.log

echo "Started at: "
date

time pasp t{sz}_{eps}.lp

echo "Ended at: "
date
''')
        
        fp.close()


# generates the sbatcher
fp = open("sbatcher_smoke.sh", "w")

for l in fnames_list:
    fp.write("sbatch " + l)
    fp.write("\n")

fp.close()
