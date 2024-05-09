import random
import sys
import os


not_symbol = '\+'
data_path = 'shop'

if sys.argv[1] == 'pasta':
    not_symbol = 'not '
    data_path = 'shop-pasta'

# 4 shoppers: j,m,c,l
lp4 = f'''
bought(spaghetti,john) :- shops(john), {not_symbol} bought(steak,john).
bought(steak,john)     :- shops(john), {not_symbol} bought(spaghetti,john).
bought(spaghetti,mary) :- shops(mary), {not_symbol} bought(beans,mary).
bought(beans,mary)     :- shops(mary), {not_symbol} bought(spaghetti,mary).
bought(tomato,carl)    :- shops(carl), {not_symbol} bought(onions,carl).
bought(onions,carl)    :- shops(carl), {not_symbol} bought(tomato,carl).
bought(steak,louis)    :- shops(louis), {not_symbol} bought(onions,louis).
bought(onions,louis)   :- shops(louis), {not_symbol} bought(steak,louis).

bought(spaghetti) :- bought(spaghetti,_).
bought(steak)     :- bought(steak,_).
bought(beans)     :- bought(beans,_).
bought(onions)    :- bought(onions,_).
bought(tomato)    :- bought(tomato,_).

#learnable(shops(john)).
#learnable(shops(mary)).
#learnable(shops(carl)).
#learnable(shops(louis)).
'''
lp4_atoms = ['bought(spaghetti)', 'bought(steak)', 'bought(beans)', 'bought(onions)', 'bought(tomato)']

# 8 shoppers: j,m,c,l, e,f,g,h
lp8 = f'''
bought(spaghetti,john) :- shops(john), {not_symbol} bought(steak,john).
bought(steak,john)     :- shops(john), {not_symbol} bought(spaghetti,john).

bought(spaghetti,mary) :- shops(mary), {not_symbol} bought(beans,mary).
bought(beans,mary)     :- shops(mary), {not_symbol} bought(spaghetti,mary).

bought(tomato,carl) :- shops(carl), {not_symbol} bought(onions,carl).
bought(onions,carl) :- shops(carl), {not_symbol} bought(tomato,carl).

bought(steak,louis)  :- shops(louis), {not_symbol} bought(onions,louis).
bought(onions,louis) :- shops(louis), {not_symbol} bought(steak,louis).

bought(pizza,e)  :- shops(e), {not_symbol} bought(nails,e), {not_symbol} bought(onions,e).
bought(nails,e)  :- shops(e), {not_symbol} bought(pizza,e), {not_symbol} bought(onions,e).
bought(onions,e) :- shops(e), {not_symbol} bought(pizza,e), {not_symbol} bought(nails,e).

bought(spaghetti,f) :- shops(f), {not_symbol} bought(beans,f),     {not_symbol} bought(nails,f).
bought(beans,f)     :- shops(f), {not_symbol} bought(spaghetti,f), {not_symbol} bought(nails,f).
bought(nails,f)     :- shops(f), {not_symbol} bought(spaghetti,f), {not_symbol} bought(beans,f).

bought(tomato,g) :- shops(g), {not_symbol} bought(onions,g), {not_symbol} bought(socks,g).
bought(onions,g) :- shops(g), {not_symbol} bought(tomato,g), {not_symbol} bought(socks,g).
bought(socks,g)  :- shops(g), {not_symbol} bought(tomato,g), {not_symbol} bought(onions,g).

bought(tuna,h)     :- shops(h), {not_symbol} bought(onions,h), {not_symbol} bought(zucchini,h).
bought(onions,h)   :- shops(h), {not_symbol} bought(tuna,h), {not_symbol} bought(zucchini,h).
bought(zucchini,h) :- shops(h), {not_symbol} bought(tuna,h), {not_symbol} bought(onions,h).

bought(spaghetti):-  bought(spaghetti,_).
bought(steak):- bought(steak,_).
bought(beans):- bought(beans,_).
bought(onions):- bought(onions,_).
bought(tomato):- bought(tomato,_).
bought(pizza):- bought(pizza,_).
bought(nails):- bought(nails,_).
bought(socks):- bought(socks,_).
bought(tuna):- bought(tuna,_).
bought(zucchini):- bought(zucchini,_).


#learnable(shops(john)).
#learnable(shops(mary)).
#learnable(shops(carl)).
#learnable(shops(louis)).
#learnable(shops(e)).
#learnable(shops(f)).
#learnable(shops(g)).
#learnable(shops(h)).
'''
lp8_atoms = ['bought(spaghetti)', 'bought(steak)', 'bought(beans)', 'bought(onions)', 'bought(tomato)', 'bought(pizza)', 'bought(nails)', 'bought(socks)', 'bought(tuna)', 'bought(zucchini)']

# 10 shoppers: j,m,c,l, e,f,g,h, i,l
lp10 = f'''
bought(spaghetti,john) :- shops(john), {not_symbol} bought(steak,john).
bought(steak,john)     :- shops(john), {not_symbol} bought(spaghetti,john).

bought(spaghetti,mary) :- shops(mary), {not_symbol} bought(beans,mary).
bought(beans,mary)     :- shops(mary), {not_symbol} bought(spaghetti,mary).

bought(tomato,carl) :- shops(carl), {not_symbol} bought(onions,carl).
bought(onions,carl) :- shops(carl), {not_symbol} bought(tomato,carl).

bought(steak,louis)  :- shops(louis), {not_symbol} bought(onions,louis).
bought(onions,louis) :- shops(louis), {not_symbol} bought(steak,louis).

bought(pizza,e)  :- shops(e), {not_symbol} bought(nails,e), {not_symbol} bought(onions,e).
bought(nails,e)  :- shops(e), {not_symbol} bought(pizza,e), {not_symbol} bought(onions,e).
bought(onions,e) :- shops(e), {not_symbol} bought(pizza,e), {not_symbol} bought(nails,e).

bought(spaghetti,f) :- shops(f), {not_symbol} bought(beans,f),     {not_symbol} bought(nails,f).
bought(beans,f)     :- shops(f), {not_symbol} bought(spaghetti,f), {not_symbol} bought(nails,f).
bought(nails,f)     :- shops(f), {not_symbol} bought(spaghetti,f), {not_symbol} bought(beans,f).

bought(tomato,g) :- shops(g), {not_symbol} bought(onions,g), {not_symbol} bought(socks,g).
bought(onions,g) :- shops(g), {not_symbol} bought(tomato,g), {not_symbol} bought(socks,g).
bought(socks,g)  :- shops(g), {not_symbol} bought(tomato,g), {not_symbol} bought(onions,g).

bought(tuna,h)     :- shops(h), {not_symbol} bought(onions,h), {not_symbol} bought(zucchini,h).
bought(onions,h)   :- shops(h), {not_symbol} bought(tuna,h), {not_symbol} bought(zucchini,h).
bought(zucchini,h) :- shops(h), {not_symbol} bought(tuna,h), {not_symbol} bought(onions,h).


bought(salami,i)   :- shops(i), {not_symbol} bought(onions,i), {not_symbol} bought(zucchini,i), {not_symbol} bought(tape,i) .
bought(onions,i)   :- shops(i), {not_symbol} bought(salami,i), {not_symbol} bought(zucchini,i), {not_symbol} bought(tape,i).
bought(zucchini,i) :- shops(i), {not_symbol} bought(salami,i), {not_symbol} bought(onions,i),   {not_symbol} bought(tape,i).
bought(tape,i)     :- shops(i), {not_symbol} bought(salami,i), {not_symbol} bought(onions,i),   {not_symbol} bought(zucchini,i).

bought(nails,l)     :- shops(l), {not_symbol} bought(tuna,l),  {not_symbol} bought(steak,l), {not_symbol} bought(spaghetti,l).
bought(tuna,l)      :- shops(l), {not_symbol} bought(nails,l), {not_symbol} bought(steak,l), {not_symbol} bought(spaghetti,l).
bought(steak,l)     :- shops(l), {not_symbol} bought(nails,l), {not_symbol} bought(tuna,l),  {not_symbol} bought(spaghetti,l).
bought(spaghetti,l) :- shops(l), {not_symbol} bought(nails,l), {not_symbol} bought(tuna,l),  {not_symbol} bought(steak,l).


bought(spaghetti):-  bought(spaghetti,_).
bought(steak):- bought(steak,_).
bought(beans):- bought(beans,_).
bought(onions):- bought(onions,_).
bought(tomato):- bought(tomato,_).
bought(pizza):- bought(pizza,_).
bought(nails):- bought(nails,_).
bought(socks):- bought(socks,_).
bought(tuna):- bought(tuna,_).
bought(zucchini):- bought(zucchini,_).
bought(salami):- bought(salami,_).
bought(tape):- bought(tape,_).


#learnable(shops(john)).
#learnable(shops(mary)).
#learnable(shops(carl)).
#learnable(shops(louis)).
#learnable(shops(e)).
#learnable(shops(f)).
#learnable(shops(g)).
#learnable(shops(h)).
#learnable(shops(i)).
#learnable(shops(l)).
'''
lp10_atoms = ['bought(spaghetti)', 'bought(steak)', 'bought(beans)', 'bought(onions)', 'bought(tomato)', 'bought(pizza)', 'bought(nails)', 'bought(socks)', 'bought(tuna)', 'bought(zucchini)', 'bought(salami)', 'bought(tape)']

lp12 = f'''
bought(spaghetti,john) :- shops(john), {not_symbol} bought(steak,john).
bought(steak,john)     :- shops(john), {not_symbol} bought(spaghetti,john).

bought(spaghetti,mary) :- shops(mary), {not_symbol} bought(beans,mary).
bought(beans,mary)     :- shops(mary), {not_symbol} bought(spaghetti,mary).

bought(tomato,carl) :- shops(carl), {not_symbol} bought(onions,carl).
bought(onions,carl) :- shops(carl), {not_symbol} bought(tomato,carl).

bought(steak,louis)  :- shops(louis), {not_symbol} bought(onions,louis).
bought(onions,louis) :- shops(louis), {not_symbol} bought(steak,louis).

bought(pizza,e)  :- shops(e), {not_symbol} bought(nails,e), {not_symbol} bought(onions,e).
bought(nails,e)  :- shops(e), {not_symbol} bought(pizza,e), {not_symbol} bought(onions,e).
bought(onions,e) :- shops(e), {not_symbol} bought(pizza,e), {not_symbol} bought(nails,e).

bought(spaghetti,f) :- shops(f), {not_symbol} bought(beans,f),     {not_symbol} bought(nails,f).
bought(beans,f)     :- shops(f), {not_symbol} bought(spaghetti,f), {not_symbol} bought(nails,f).
bought(nails,f)     :- shops(f), {not_symbol} bought(spaghetti,f), {not_symbol} bought(beans,f).

bought(tomato,g) :- shops(g), {not_symbol} bought(onions,g), {not_symbol} bought(socks,g).
bought(onions,g) :- shops(g), {not_symbol} bought(tomato,g), {not_symbol} bought(socks,g).
bought(socks,g)  :- shops(g), {not_symbol} bought(tomato,g), {not_symbol} bought(onions,g).

bought(tuna,h)     :- shops(h), {not_symbol} bought(onions,h), {not_symbol} bought(zucchini,h).
bought(onions,h)   :- shops(h), {not_symbol} bought(tuna,h), {not_symbol} bought(zucchini,h).
bought(zucchini,h) :- shops(h), {not_symbol} bought(tuna,h), {not_symbol} bought(onions,h).


bought(salami,i)   :- shops(i), {not_symbol} bought(onions,i), {not_symbol} bought(zucchini,i), {not_symbol} bought(tape,i) .
bought(onions,i)   :- shops(i), {not_symbol} bought(salami,i), {not_symbol} bought(zucchini,i), {not_symbol} bought(tape,i).
bought(zucchini,i) :- shops(i), {not_symbol} bought(salami,i), {not_symbol} bought(onions,i),   {not_symbol} bought(tape,i).
bought(tape,i)     :- shops(i), {not_symbol} bought(salami,i), {not_symbol} bought(onions,i),   {not_symbol} bought(zucchini,i).

bought(nails,l)     :- shops(l), {not_symbol} bought(tuna,l),  {not_symbol} bought(steak,l), {not_symbol} bought(spaghetti,l).
bought(tuna,l)      :- shops(l), {not_symbol} bought(nails,l), {not_symbol} bought(steak,l), {not_symbol} bought(spaghetti,l).
bought(steak,l)     :- shops(l), {not_symbol} bought(nails,l), {not_symbol} bought(tuna,l),  {not_symbol} bought(spaghetti,l).
bought(spaghetti,l) :- shops(l), {not_symbol} bought(nails,l), {not_symbol} bought(tuna,l),  {not_symbol} bought(steak,l).


bought(beans,m)     :- shops(m), {not_symbol} bought(onions,m),{not_symbol} bought(steak,m), {not_symbol} bought(spaghetti,m), {not_symbol} bought(nails,m).
bought(onions,m)    :- shops(m), {not_symbol} bought(beans,m), {not_symbol} bought(steak,m), {not_symbol} bought(spaghetti,m), {not_symbol} bought(nails,m).
bought(steak,m)     :- shops(m), {not_symbol} bought(beans,m), {not_symbol} bought(onions,m),{not_symbol} bought(spaghetti,m), {not_symbol} bought(nails,m).
bought(spaghetti,m) :- shops(m), {not_symbol} bought(beans,m), {not_symbol} bought(onions,m),{not_symbol} bought(steak,m),     {not_symbol} bought(nails,m).
bought(nails,m)     :- shops(m), {not_symbol} bought(beans,m), {not_symbol} bought(onions,m),{not_symbol} bought(steak,m),     {not_symbol} bought(spaghetti,m).


bought(nails,n)     :- shops(n), {not_symbol} bought(tomato,n), {not_symbol} bought(steak,n), {not_symbol} bought(tuna,n), {not_symbol} bought(spaghetti,n).
bought(tomato,n)    :- shops(n), {not_symbol} bought(nails,n), {not_symbol} bought(steak,n), {not_symbol} bought(tuna,n), {not_symbol} bought(spaghetti,n).
bought(steak,n)     :- shops(n), {not_symbol} bought(nails,n), {not_symbol} bought(tomato,n), {not_symbol} bought(tuna,n), {not_symbol} bought(spaghetti,n).
bought(tuna,n)      :- shops(n), {not_symbol} bought(nails,n), {not_symbol} bought(tomato,n), {not_symbol} bought(steak,n), {not_symbol} bought(spaghetti,n).
bought(spaghetti,n) :- shops(n), {not_symbol} bought(nails,n), {not_symbol} bought(tomato,n), {not_symbol} bought(steak,n), {not_symbol} bought(tuna,n).


bought(spaghetti):-  bought(spaghetti,_).
bought(steak):- bought(steak,_).
bought(beans):- bought(beans,_).
bought(onions):- bought(onions,_).
bought(tomato):- bought(tomato,_).
bought(pizza):- bought(pizza,_).
bought(nails):- bought(nails,_).
bought(socks):- bought(socks,_).
bought(tuna):- bought(tuna,_).
bought(zucchini):- bought(zucchini,_).
bought(salami):- bought(salami,_).
bought(tape):- bought(tape,_).


#learnable(shops(john)).
#learnable(shops(mary)).
#learnable(shops(carl)).
#learnable(shops(louis)).
#learnable(shops(e)).
#learnable(shops(f)).
#learnable(shops(g)).
#learnable(shops(h)).
#learnable(shops(i)).
#learnable(shops(l)).
#learnable(shops(m)).
#learnable(shops(n)).
'''

lp12_atoms = ['bought(spaghetti)', 'bought(steak)', 'bought(beans)', 'bought(onions)', 'bought(tomato)', 'bought(pizza)', 'bought(nails)', 'bought(socks)', 'bought(tuna)', 'bought(zucchini)', 'bought(salami)', 'bought(tape)']


def generate_shop(size, n_interpretations):
    file_name = f'shop-{size}-{n_interpretations}.lp'

    n_interpretations = int(n_interpretations)
    size = int(size)
    seed = size*n_interpretations
    random.seed(seed)

    fout = open(file_name, 'w')

    fout.write(f"% Dataset shop of size {size} and {n_interpretations} interpretations with seed {seed}\n")

    # Scrivo il programma
    if size == 8:
        lp = lp8
        atoms = lp8_atoms
    elif size == 10:
        lp = lp10
        atoms = lp10_atoms
    elif size == 12:
        lp = lp12
        atoms = lp12_atoms
    else:
        lp = lp4
        atoms = lp4_atoms
    
    fout.write(lp)
    fout.write('\n\n\n')



    # sample vincoli: 2 o 3 atomi per vincolo
    l = random.sample(range(2, len(atoms) + 1), 1)[0]
    na = 2 if random.random() < 0.5 else 3
    for j in range(l):
        s = ':- '
        copy_atoms = atoms.copy()
        for k in range(na):
            atom = random.sample(copy_atoms, 1)[0]
            copy_atoms.remove(atom)
            s = s + f'{atom},'
        s = s[:-1] + '.\n'
        fout.write(s)
        
    fout.write('\n')

    # Genero n_interpretations interpretazioni di lunghezza random (max = len(atoms)) e con atomi random
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

    fout.close()


if __name__ == "__main__":
    os.chdir(data_path)
    for s in [4,8,10,12]: # num of people 
        for n in [5, 10, 15, 20]: # num interpretations
            generate_shop(s, n)
