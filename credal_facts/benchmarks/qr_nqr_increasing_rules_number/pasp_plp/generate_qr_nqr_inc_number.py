# 0.03::a0.
# 0.03::a1.
# 0.03::a2.
# 0.03::a3.
# 0.03::a4.
# 0.03::a5.
# 0.03::a6.
# 0.03::a7.
# 0.03::a8.
# 0.03::a9.

# qr:- a0.
# qr :- a1, \+ nqr.
# nqr :- a1, \+ qr.
# qr:- a2.
# qr :- a3, \+ nqr.
# nqr :- a3, \+ qr.
# qr:- a4.
# qr :- a5, \+ nqr.
# nqr :- a5, \+ qr.
# qr:- a6.
# qr :- a7, \+ nqr.
# nqr :- a7, \+ qr.
# qr:- a8.
# qr :- a9, \+ nqr.
# nqr :- a9, \+ qr.


# generates the programs
import argparse

command_parser = argparse.ArgumentParser()
command_parser.add_argument("max_size", help="max size", type=int, default=15)
command_parser.add_argument("--strict", help="strict [0.45,0.55] version", action="store_true", default=False)

args = command_parser.parse_args()


for sz in range(10, args.max_size + 1, 5):
    for n_opt in range(2, sz + 1):
        if args.strict:
            fp = open(f"qr_nqr_clauses_{sz}_{n_opt}_strict.lp", "w")
        else:
            fp = open(f"qr_nqr_clauses_{sz}_{n_opt}_loose.lp", "w")
        
        for j in range(0, n_opt):
            if args.strict:
                fp.write(f"[0.45,0.55]::a{j}.\n")
            else:
                fp.write(f"[0.05,0.95]::a{j}.\n")
        for j in range(n_opt, sz):
            fp.write(f"0.03::a{j}.\n")
        
        fp.write("\n")
        
        for j in range(0, sz):
            if j % 2 == 0:
                fp.write(f"qr:- a{j}.\n")
            else:
                fp.write(f"qr:- a{j}, not nqr.\n")
                fp.write(f"nqr:- a{j}, not qr.\n")
                
        fp.write("\n#query(qr).\n")
        fp.close()

# generates the runners
fnames_list : 'list[str]' = []

for sz in range(10, args.max_size + 1, 5):
    if args.strict:
        fname = f"runner_clauses_{sz}_strict.sh"
    else:
        fname = f"runner_clauses_{sz}_loose.sh"
    fp = open(fname, "w")
    fnames_list.append(fname)
    m = "strict" if args.strict else "loose"        
    fp.write(f'''#!/bin/bash
#SBATCH --job-name=qr_c{sz}
#SBATCH --ntasks=1
#SBATCH --mem=16gb
#SBATCH --partition=longrun
#SBATCH --output=qr_c{sz}_{m}.log

echo "Started at: "
date

for i in `seq 2 {sz - 1}`; do 
echo "instance $i"
time pasp qr_nqr_clauses_{sz}_$i\_{m}.lp
done 

echo "Ended at: "
date
''')
        
    fp.close()


# generates the sbatcher
if args.strict:
    fname = f"sbatcher_clauses_strict.sh"
else:
    fname = f"sbatcher_clauses_loose.sh"

fp = open(fname, "w")

for l in fnames_list:
    fp.write("sbatch " + l)
    fp.write("\n")

fp.close()