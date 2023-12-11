
for sz in range(10, 31, 5):
    fp = open(f"t1_{sz}_pf.lp","w")
    for i in range(0,sz):
        if i % 2 == 0:
            print(f"0.01::a{i}.")
            fp.write(f"0.01::a{i}.\n")
        else:
            print(f"0.99::a{i}.")
            fp.write(f"0.99::a{i}.\n")

    print('\n')
    fp.write('\n')

    body_qr = []
    body_qr_nqr = []
    for i in range(0,sz):
        if i % 2 == 0:
            # print(f"\+ a{i}.")
            body_qr.append(f"\+ a{i}")
            # fp.write(f"qr:- \+ a{i}.\n")
        else:
            body_qr_nqr.append(f"a{i}")
    
    cl0 = "qr:- " + ','.join(body_qr) + '.'
    cl1 = "qr:- " + ','.join(body_qr_nqr) + ',\+ nqr.'
    cl2 = "nqr:- " + ','.join(body_qr_nqr) + ',\+ qr.'
    
    fp.write(cl0)
    fp.write('\n')
    
    fp.write(cl1)
    fp.write('\n')
    
    fp.write(cl2)
    fp.write('\n')
    
    fp.close()