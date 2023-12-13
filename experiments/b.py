import sys

sz = int(sys.argv[1])

for i in range(0,sz):
    if i % 2 == 0:
        print(f"0.97::a{i}.")
    else:
        print(f"0.03::a{i}.")

print('\n')

for i in range(0,sz):
    if i % 2 == 0:
        print(f"qr:- \+ a{i}.")
    else:
        print(f"qr:- a{i}, \+ nqr.")
        print(f"nqr:- a{i}, \+ qr.")
        