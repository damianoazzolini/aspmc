import os
import sys
import random


not_symbol = '\+'
data_path = 'smokers'

if len(sys.argv) > 1 and sys.argv[1] == 'pasta':
    not_symbol = 'not'
    data_path = 'smokers-pasta'


'''
The smokers dataset from SMProbLog.
'''


t1 = f'''
0.1 :: asthma_f(1).
0.1 :: asthma_f(2).

0.3 :: stress(1).
0.3 :: stress(2).

0.4 :: stress_fact(1).
0.4 :: stress_fact(2).

smokes(X) :- stress(X), stress_fact(X).

smokes(X) :- influences(Y,X), smokes(Y).


0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).

asthma_rule(X):- smokes(X), asthma_fact(X).

asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).

0.2 :: pred.
ill(X)  :- smokes(X), asthma(X), {not_symbol} n_ill(X).
n_ill(X):- smokes(X), asthma(X), pred, {not_symbol} ill(X).

#learnable(influences(1,2)). 
#learnable(influences(2,1)).

'''

# t2
t2 = '''
0.1 :: asthma_f(3).
0.3 :: stress(3).
0.4 :: stress_fact(3).
0.4 :: asthma_fact(3).
'''

# t3
t3 = '''
0.1 :: asthma_f(4).
0.3 :: stress(4).
0.4 :: stress_fact(4).
0.4 :: asthma_fact(4).
'''

# t4
t4 = '''
#learnable(influences(2,3)).
'''

# t5
t5 = '''
#learnable(influences(3,4)).
'''

# t6
t6 = '''
#learnable(influences(4,1)).
'''

def generate_smokers(size, n_interpretations):
    file_name = f'{data_path}-{size}-{n_interpretations}.lp'

    n_interpretations = int(n_interpretations)
    size = int(size)
    seed = size*n_interpretations
    random.seed(seed)

    fout = open(file_name, 'w')

    fout.write(f"% Dataset smokers of size {size} and {n_interpretations} interpretations with seed {seed}\n")

    fout.write(t1)
    fout.write('\n')

    atoms = ['ill(1)', 'ill(2)']

    if size == 2:
        fout.write(t2)
        atoms = ['ill(1)', 'ill(2)', 'ill(3)']
    elif size == 3:
        fout.write(t2)
        fout.write(t3)
        atoms = ['ill(1)', 'ill(2)', 'ill(3)', 'ill(4)']
    elif size == 4:
        fout.write(t2)
        fout.write(t3)
        fout.write(t4)
        atoms = ['ill(1)', 'ill(2)', 'ill(3)', 'ill(4)']
    elif size == 5:
        fout.write(t2)
        fout.write(t3)
        fout.write(t4)
        fout.write(t5)
        atoms = ['ill(1)', 'ill(2)', 'ill(3)', 'ill(4)']
    elif size == 6:
        fout.write(t2)
        fout.write(t3)
        fout.write(t4)
        fout.write(t5)
        fout.write(t6)
        atoms = ['ill(1)', 'ill(2)', 'ill(3)', 'ill(4)']
    else:
        size=1
        # print(f"not valid: size = {size}, n_interpretations = {n_interpretations}")
        # sys.exit(1)
    
    fout.write('\n')

    for i in range(1,n_interpretations+1):
        # Sample lunghezza interpretazione:
        l = random.sample(range(1, len(atoms) + 1), 1)[0]

        copy_atoms = atoms.copy()
        # Sample atomi:
        for j in range(l):
            atom = random.sample(copy_atoms, 1)[0]
            copy_atoms.remove(atom)
            # random sample between 0 and 1
            if random.random() < 0.5:
                fout.write(f"#negative({i},{atom}).\n")
            else:
                fout.write(f"#positive({i},{atom}).\n")
        fout.write('\n')
        
    fout.write('\n')
    s = "#train("
    for i in range(1, n_interpretations+1):
        s = s + f'{i},'
    s = s[:-1] + ').\n'
    fout.write(s)

    s = "#test("
    for i in range(1,n_interpretations+1):
        s = s + f'{i},'
    s = s[:-1] + ').\n'
    fout.write(s)


if __name__ == "__main__":
    # se data_path non esiste, lo creo
    if not os.path.exists(data_path):
        os.mkdir(data_path)
    os.chdir(data_path)

    for s in [1,2,3,4,5,6]: # instance number
        for n in [5, 10, 15, 20]: # num interpretations
            generate_smokers(s, n)