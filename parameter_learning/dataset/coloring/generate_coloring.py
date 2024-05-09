import random
import os


base = """
red(X) :- node(X), \+ green(X), \+ blue(X).
green(X) :- node(X), \+ red(X), \+ blue(X).
blue(X) :- node(X), \+ red(X), \+ green(X).

e(X,Y) :- edge(X,Y).
e(Y,X) :- edge(Y,X).

c0 :- e(X,Y), red(X), red(Y).
c1 :- e(X,Y), green(X), green(Y).
c2 :- e(X,Y), blue(X), blue(Y).

valid :- \+ c0, \+ c1, \+ c2.

node(1).
node(2).
node(3).
node(4).
node(5).
node(6).

"""


def generate_atoms(n_nodes,seed):
    random.seed(seed)
    atoms  = []
    colors = ['red', 'green', 'blue']
    nodes = [i for i in range(1, n_nodes + 1)]
    maxlen = random.randint(2, n_nodes)
    for i in range(1,maxlen):
        node  = random.choice(nodes)
        nodes.remove(node)
        color = random.choice(colors)
        atoms.append(f'{color}({node})')
    return atoms

def generate_edges(n_edges,n_nodes=6,seed=1):
    paris = [f"#learnable(edge({x},{y}))." for x in range(1, n_nodes + 1) for y in range(1, n_nodes + 1) if x != y] 
    copy_paris = paris.copy()
    edges = []
    for i in range(n_edges):
        random.seed(i*n_edges*seed)
        e = random.choice(copy_paris)
        edges.append(e)
        copy_paris.remove(e)
    edges.append('\n')
    return '\n'.join(edges)

def generate_coloring(size, n_interpretations):
    file_name = f'coloring-{size}-{n_interpretations}.lp'

    n_interpretations = int(n_interpretations)
    size = int(size)
    seed = size*n_interpretations + size+n_interpretations
    random.seed(seed)
    seed1 = 1
    seed2 = 2

    n_nodes = 6

    fout = open(file_name, 'w')

    fout.write(f"% Dataset coloring of size {size} and {n_interpretations} interpretations\n")

    fout.write(base)

    e = generate_edges(size,seed=seed)
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
        if random.random() >= 0.5:
            random.seed(seed2*i)
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
    
    os.chdir('coloring')

    # for s in [10, 15, 20, 25]:
    for s in [4, 5, 6, 7, 8, 9]: # num edges
        for n in [5, 10, 15, 20]: # num interpretations
            generate_coloring(s, n)