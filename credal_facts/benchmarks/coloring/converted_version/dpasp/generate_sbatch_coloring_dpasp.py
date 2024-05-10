# generates the runners
fnames_list : 'list[str]' = []

for sz in range(6, 16):
    fname = f"runner_coloring_{sz}_dpasp.sh"
    fp = open(fname, "w")
    fnames_list.append(fname)
    
    fp.write(
f'''#!/bin/bash
#SBATCH --job-name=coloring{sz}
#SBATCH --ntasks=1
#SBATCH --mem=16gb
#SBATCH --partition=longrun
#SBATCH --output=coloring_{sz}_dpasp_converted.log

echo "Started at: "
date

time pasp sm_gc_{sz}_fp_converted.lp

echo "Ended at: "
date
''')
        
    fp.close()


# generates the sbatcher
fp = open("sbatcher_graph_dpasp.sh", "w")

for l in fnames_list:
    fp.write("sbatch " + l)
    fp.write("\n")

fp.close()
