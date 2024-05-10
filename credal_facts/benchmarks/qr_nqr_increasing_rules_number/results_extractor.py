import sys

# init_inst = int(sys.argv[1])

fnames = [
"qr_nqr_clauses_SLSQP_16_strict.log",
"qr_nqr_clauses_SLSQP_17_strict.log",
"qr_nqr_clauses_SLSQP_18_strict.log",
"qr_nqr_clauses_SLSQP_19_strict.log",
]
nnf_times = []
symp_times = []
opt_times = []
tot_times = []

for f in fnames:
    fp = open(f, "r")
    lines = fp.readlines()
    fp.close()
    
    for line in lines:
        if line.startswith('nnf_construction_time'):
            l = line.split(' ')[1][:5]
            nnf_times.append(l)
        elif line.startswith('symp_time'):
            l = line.split(' ')[1][:5]
            symp_times.append(l)
        elif line.startswith('opt_time'):
            l = line.split(' ')[1][:5]
            opt_times.append(l)
        if line.startswith('real'):
            l = line.split('real')[1]
            m = int(l.split('m')[0])*60
            s = float(l.split('m')[1][:-2])
            tot_times.append(m+s)

for i, n, s, o, t in zip([16,17,18,19], nnf_times, symp_times, opt_times, tot_times):
    print(f"{i},{n},{s},{o},{t}")
# for i, t in zip(range(init_inst,len(tot_times) + init_inst),tot_times):
#     print(f"{i},{t}")