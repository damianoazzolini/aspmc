# generates the runners
fnames_list : 'list[str]' = []

for sz in range(7, 21):
    for alg in ["COBYLA","SLSQP"]:
        for eps in [0,0.06]:
            s = "no_eps" if eps == 0 else "eps"
            fname = f"runner_colring_{sz}_{alg}_{s}.sh"
            fp = open(fname, "w")
            fnames_list.append(fname)
            
            fp.write(
f'''#!/bin/bash
#SBATCH --job-name=coloring{sz}
#SBATCH --ntasks=1
#SBATCH --mem=16gb
#SBATCH --partition=longrun
#SBATCH --output=coloring_{sz}_{alg}_{s}.log

echo "Started at: "
date

time pasta sm_gc_{sz}_pf.lp --query="qr" --optimize {"--epsilon=0.06" if eps == 0.06 else ""} --threshold=0.07 --target=upper --verbose --method={alg}

echo "Ended at: "
date
''')
        
            fp.close()


# generates the sbatcher
fp = open("sbatcher_graph.sh", "w")

for l in fnames_list:
    fp.write("sbatch " + l)
    fp.write("\n")

fp.close()
