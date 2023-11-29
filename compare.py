import sys

f = open(sys.argv[1],"r")
lines_1 = f.readlines()
f.close()
lines_1 = [l.replace('\n', '') for l in lines_1 if not l.startswith('c')]

f = open(sys.argv[2],"r")
lines_2 = f.readlines()
f.close()
lines_2 = [l.replace('\n','') for l in lines_2 if not l.startswith('c')]

lines_1.sort()
lines_2.sort()

for l1, l2 in zip(lines_1, lines_2):
    if l1 != l2:
        print(f"l1: {l1} - l2: {l2}")