% Dataset coloring of size 7 and 10 interpretations

red(X)  :- node(X), not blue(X),not green(X).
green(X):- node(X), not red(X), not blue(X).
blue(X) :- node(X), not red(X), not green(X).

e(X,Y) :- edge(X,Y).
e(X,Y) :- edge(Y,X).

c0 :- e(X,Y), red(X), red(Y).
c1 :- e(X,Y), green(X), green(Y).
c2 :- e(X,Y), blue(X), blue(Y).

valid :- not c0, not c1, not c2.

node(1).
node(2).
node(3).
node(4).
node(5).
node(6).
node(7).

#learnable(edge(1,2)).
#learnable(edge(1,3)).
#learnable(edge(1,4)).
#learnable(edge(1,5)).
#learnable(edge(1,6)).
#learnable(edge(1,7)).
#learnable(edge(2,3)).
#learnable(edge(2,4)).
#learnable(edge(2,5)).
#learnable(edge(2,6)).
#learnable(edge(2,7)).
#learnable(edge(3,4)).
#learnable(edge(3,5)).
#learnable(edge(3,6)).
#learnable(edge(3,7)).
#learnable(edge(4,5)).
#learnable(edge(4,6)).
#learnable(edge(4,7)).
#learnable(edge(5,6)).
#learnable(edge(5,7)).
#learnable(edge(6,7)).


% generating atoms with seed = 87.
#negative(1,red(6)).
#negative(1,red(5)).
#negative(1,valid).

% generating atoms with seed = 174.
#negative(2,red(4)).
#positive(2,green(5)).
#positive(2,valid).

% generating atoms with seed = 261.
#positive(3,red(1)).
#positive(3,blue(2)).
#negative(3,green(7)).
#negative(3,valid).

% generating atoms with seed = 348.
#negative(4,red(7)).
#positive(4,red(2)).
#positive(4,green(5)).
#negative(4,valid).

% generating atoms with seed = 435.
#positive(5,green(5)).
#positive(5,red(3)).
#positive(5,valid).

% generating atoms with seed = 522.
#negative(6,green(2)).
#negative(6,red(6)).
#positive(6,valid).

% generating atoms with seed = 609.
#positive(7,green(5)).
#positive(7,red(1)).
#positive(7,red(3)).
#positive(7,green(4)).
#negative(7,valid).

% generating atoms with seed = 696.
#positive(8,red(7)).
#negative(8,blue(4)).
#negative(8,valid).

% generating atoms with seed = 783.
#positive(9,red(5)).
#positive(9,green(2)).
#positive(9,green(6)).
#negative(9,red(3)).
#negative(9,valid).

% generating atoms with seed = 870.
#negative(10,green(4)).
#negative(10,green(1)).
#positive(10,valid).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
