import random
import sys
import os

not_symbol = '\+'
data_path = 'coloring-completo'

if len(sys.argv) > 1 and sys.argv[1] == 'pasta':
    not_symbol = 'not'
    data_path = 'coloring-completo-pasta'

base = f"""
red(X)  :- node(X), {not_symbol} blue(X),{not_symbol} green(X).
green(X):- node(X), {not_symbol} red(X), {not_symbol} blue(X).
blue(X) :- node(X), {not_symbol} red(X), {not_symbol} green(X).

e(X,Y) :- edge(X,Y).
e(X,Y) :- edge(Y,X).

c0 :- e(X,Y), red(X), red(Y).
c1 :- e(X,Y), green(X), green(Y).
c2 :- e(X,Y), blue(X), blue(Y).

valid :- {not_symbol} c0, {not_symbol} c1, {not_symbol} c2.

"""


def generate_atoms(n_nodes,seed):
    random.seed(seed)
    atoms  = []
    colors = ['red', 'green', 'blue']
    nodes = [i for i in range(1, n_nodes + 1)]
    maxlen = random.randint(2, int(n_nodes/2) + 1)
    for _ in range(0,maxlen):
        node  = random.choice(nodes)
        nodes.remove(node)
        color = random.choice(colors)
        atoms.append(f'{color}({node})')
    return atoms

def generate_edges(n_nodes):
    pairs = [f"#learnable(edge({x},{y}))." for x in range(1, n_nodes) for y in range(2, n_nodes + 1) if x < y] 
    # UPD 2024-04-22: complete graph => all edges (basta che ci sia da x a y con x<y, non serve anche da y a x)
    # edges = []
    # copy_paris = paris.copy()
    # for i in range(n_edges):
    #     random.seed(i*n_edges*seed)
    #     e = random.choice(copy_paris)
    #     edges.append(e)
    #     copy_paris.remove(e)
    # edges.append('\n')
    # return '\n'.join(edges)
    pairs.append('\n')
    return '\n'.join(pairs)

def generate_coloring(size, n_interpretations):
    file_name = f'{data_path}-{size}-{n_interpretations}.lp'

    seed = size*n_interpretations + size+n_interpretations
    random.seed(seed)
    seed1 = 1
    seed2 = 2

    n_nodes = size

    fout = open(file_name, 'w')

    fout.write(f"% Dataset coloring of size {size} and {n_interpretations} interpretations\n")

    fout.write(base)

    # scrivo i nodi
    for i in range(1, size + 1):
        fout.write(f"node({i}).\n")
    fout.write('\n')

    e = generate_edges(size)
    fout.write(e)
    fout.write('\n')
    
    for i in range(1,n_interpretations+1):
        # Sample atomi
        fout.write(f"% generating atoms with seed = {i*seed}.\n")
        atoms = generate_atoms(n_nodes,i*seed)
        for atom in atoms:
            # random sample between 0 and 1
            if random.random() < 0.5:
                fout.write(f"#negative({i},{atom}).\n")
            else:
                fout.write(f"#positive({i},{atom}).\n")
        # neg/pos valid
        random.seed(seed1*i)
        # UPD 2024-04-22: valid is always present
        # if random.random() >= 0.5:
        #     random.seed(seed2*i)
        if random.random() < 0.5:
            fout.write(f"#negative({i},valid).\n")
        else:
            fout.write(f"#positive({i},valid).\n")

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
    
    if not os.path.exists(data_path):
        os.mkdir(data_path)
    os.chdir(data_path)

    # for s in [10, 15, 20, 25]:
    for s in [4, 5, 6, 7, 8]: # num edges
        for n in [5, 10, 15, 20]: # num interpretations
            generate_coloring(s, n)