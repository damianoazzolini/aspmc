import sys

# sz_max = int(sys.argv[1])

for sz in range(10, 31, 5):
    fp = open(f"t1_{sz}_pf.lp","w")
    for i in range(0,sz):
        if i % 2 == 0:
            print(f"0.97::a{i}.")
            fp.write(f"0.97::a{i}.\n")
        else:
            print(f"0.03::a{i}.")
            fp.write(f"0.03::a{i}.\n")

    print('\n')
    fp.write('\n')

    for i in range(0,sz):
        if i % 2 == 0:
            print(f"qr:- \+ a{i}.")
            fp.write(f"qr:- \+ a{i}.\n")
        else:
            print(f"qr:- a{i}, \+ nqr.")
            fp.write(f"qr:- a{i}, \+ nqr.\n")
            print(f"nqr:- a{i}, \+ qr.")
            fp.write(f"nqr:- a{i}, \+ qr.\n")
    
    fp.close()