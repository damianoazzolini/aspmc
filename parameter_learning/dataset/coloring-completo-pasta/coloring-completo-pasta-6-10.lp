% Dataset coloring of size 6 and 10 interpretations

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

#learnable(edge(1,2)).
#learnable(edge(1,3)).
#learnable(edge(1,4)).
#learnable(edge(1,5)).
#learnable(edge(1,6)).
#learnable(edge(2,3)).
#learnable(edge(2,4)).
#learnable(edge(2,5)).
#learnable(edge(2,6)).
#learnable(edge(3,4)).
#learnable(edge(3,5)).
#learnable(edge(3,6)).
#learnable(edge(4,5)).
#learnable(edge(4,6)).
#learnable(edge(5,6)).


% generating atoms with seed = 76.
#positive(1,green(4)).
#negative(1,green(2)).
#positive(1,green(1)).
#negative(1,valid).

% generating atoms with seed = 152.
#negative(2,red(6)).
#negative(2,red(4)).
#negative(2,blue(1)).
#positive(2,valid).

% generating atoms with seed = 228.
#positive(3,red(6)).
#negative(3,red(5)).
#positive(3,green(2)).
#negative(3,blue(4)).
#negative(3,valid).

% generating atoms with seed = 304.
#negative(4,green(2)).
#positive(4,green(6)).
#negative(4,valid).

% generating atoms with seed = 380.
#positive(5,blue(3)).
#positive(5,blue(5)).
#positive(5,valid).

% generating atoms with seed = 456.
#positive(6,green(4)).
#negative(6,green(5)).
#positive(6,blue(1)).
#negative(6,blue(6)).
#positive(6,valid).

% generating atoms with seed = 532.
#positive(7,blue(6)).
#negative(7,red(2)).
#negative(7,valid).

% generating atoms with seed = 608.
#positive(8,red(6)).
#positive(8,blue(4)).
#negative(8,valid).

% generating atoms with seed = 684.
#negative(9,blue(6)).
#positive(9,blue(4)).
#negative(9,blue(5)).
#negative(9,valid).

% generating atoms with seed = 760.
#negative(10,green(1)).
#positive(10,red(2)).
#positive(10,valid).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
