import random
import sys
import os

not_symbol = '\+'
data_path = 'paths'

if len(sys.argv) > 1 and sys.argv[1] == 'pasta':
    not_symbol = 'not'
    data_path = 'paths-pasta'


e_10 = f"""
path(X,Y):- connected(X,Z), path(Z,Y).
path(X,Y):- connected(X,Y).

connected(X,Y) :- edge(X,Y), {not_symbol} nconnected(X,Y).
nconnected(X,Y):- edge(X,Y), {not_symbol} connected(X,Y).

node(1).
node(2).
node(3).
node(4).
node(5).
node(6).
node(7).
node(8).
node(9).

"""
e_10_edges = [
    (1,5), (1,7),
    (2,4), (2,6),
    (3,5), (3,9),
    (4,7), (4,9),
    (5,6),
    (6,8)
]

e10_positive_paths = [
    (1,6),(1,8),
    (2,7),(2,9),(2,8),
    (3,6),(3,8),
    (5,8),
]


e_15 = e_10 + """
node(10).
node(11).
node(12).
node(13).

"""
# eventualmente mod 7->12
e_15_edges = e_10_edges + [
    (7,10),
    (8,11),
    (9,10),
    (10,13),
    (11,12)
]

e15_positive_paths = [
    (1,6),(1,8),(1,11),(1,12),(1,10),(1,13),
    (2,7),(2,10),(2,13),(2,9),(2,10),(2,13),(2,8),(2,11),(2,12),
    (3,6),(3,8),(3,11),(3,12),(3,10),(3,13),
    (4,10),(4,13),
    (5,8),(5,11),(5,12),
    (6,11),(6,12),
    (7,13),
    (8,12),
    (9,13)
]


def generate_paths(size, n_interpretations):
    file_name = f'{data_path}-{size}-{n_interpretations}.lp'

    n_interpretations = int(n_interpretations)
    size = int(size)
    seed = size*n_interpretations+size+n_interpretations
    random.seed(seed)

    fout = open(file_name, 'w')

    fout.write(f"% Dataset paths of size {size} and {n_interpretations} interpretations and seed {seed}\n")

    if size == 15:
        n_nodes = 13   
        edges = e_15_edges
        positive_paths = e15_positive_paths
        fout.write(e_15)
    else:
        n_nodes = 9
        edges = e_10_edges  
        positive_paths = e10_positive_paths 
        fout.write(e_10)

    for a in edges:
        fout.write(f"#learnable(edge({a[0]},{a[1]})).\n")

    fout.write('\n')
    

    # atoms = [f"path({x},{y})" for x in range(1, n_nodes + 1) for y in range(1, n_nodes + 1) if x != y]
    # UPD 2024-04-24: abbiamo solo archi da X a Y con Y > X
    negative_paths = [
        (x,y) for x in range(1, n_nodes) for y in range(2, n_nodes + 1) 
        if y > x and (x,y) not in positive_paths and (x,y) not in edges
    ]
    
    for i in range(1,n_interpretations+1):
        # Sample lunghezza interpretazione:
        # l = random.sample(range(1, n_nodes + 1), 1)[0]
        l = random.randint(1, 3) # UPD 2024-04-22: meno interpretazioni

        copy_neg = negative_paths.copy()
        copy_pos = positive_paths.copy()

        # Sample atomi:
        for j in range(l):
            # random sample between 0 and 1
            if random.random() < 0.5:
                # sample random da negative paths
                atom = random.choice(copy_neg)
                copy_neg.remove(atom)
                fout.write(f"#negative({i},path({atom[0]},{atom[1]})).\n")
            else:
                # sample random da positive paths
                atom = random.choice(copy_pos)
                copy_pos.remove(atom)
                fout.write(f"#positive({i},path({atom[0]},{atom[1]})).\n")
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

    for s in [10, 15]: # num of edges
        for n in [5, 10, 15, 20]: # num of interpretations
            generate_paths(s, n)