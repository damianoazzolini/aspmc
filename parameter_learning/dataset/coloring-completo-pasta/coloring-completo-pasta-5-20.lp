% Dataset coloring of size 5 and 20 interpretations

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

#learnable(edge(1,2)).
#learnable(edge(1,3)).
#learnable(edge(1,4)).
#learnable(edge(1,5)).
#learnable(edge(2,3)).
#learnable(edge(2,4)).
#learnable(edge(2,5)).
#learnable(edge(3,4)).
#learnable(edge(3,5)).
#learnable(edge(4,5)).


% generating atoms with seed = 125.
#positive(1,blue(2)).
#negative(1,blue(4)).
#negative(1,valid).

% generating atoms with seed = 250.
#negative(2,red(4)).
#negative(2,blue(1)).
#negative(2,blue(2)).
#positive(2,valid).

% generating atoms with seed = 375.
#positive(3,red(3)).
#negative(3,red(5)).
#negative(3,valid).

% generating atoms with seed = 500.
#negative(4,blue(5)).
#positive(4,green(4)).
#negative(4,blue(3)).
#negative(4,valid).

% generating atoms with seed = 625.
#negative(5,blue(3)).
#negative(5,green(1)).
#negative(5,green(4)).
#positive(5,valid).

% generating atoms with seed = 750.
#positive(6,red(4)).
#negative(6,green(2)).
#positive(6,red(5)).
#positive(6,valid).

% generating atoms with seed = 875.
#positive(7,green(3)).
#positive(7,blue(2)).
#positive(7,red(4)).
#negative(7,valid).

% generating atoms with seed = 1000.
#positive(8,green(1)).
#positive(8,red(4)).
#negative(8,red(3)).
#negative(8,valid).

% generating atoms with seed = 1125.
#negative(9,green(3)).
#positive(9,blue(1)).
#negative(9,valid).

% generating atoms with seed = 1250.
#positive(10,blue(4)).
#negative(10,green(2)).
#positive(10,valid).

% generating atoms with seed = 1375.
#positive(11,red(4)).
#negative(11,green(5)).
#negative(11,valid).

% generating atoms with seed = 1500.
#positive(12,green(1)).
#positive(12,red(4)).
#positive(12,green(3)).
#negative(12,valid).

% generating atoms with seed = 1625.
#negative(13,blue(3)).
#negative(13,blue(4)).
#positive(13,green(2)).
#negative(13,valid).

% generating atoms with seed = 1750.
#negative(14,red(3)).
#negative(14,blue(4)).
#positive(14,blue(1)).
#negative(14,valid).

% generating atoms with seed = 1875.
#positive(15,green(3)).
#positive(15,blue(4)).
#positive(15,valid).

% generating atoms with seed = 2000.
#positive(16,green(1)).
#positive(16,blue(4)).
#negative(16,blue(2)).
#negative(16,valid).

% generating atoms with seed = 2125.
#negative(17,blue(5)).
#positive(17,green(1)).
#negative(17,blue(2)).
#positive(17,valid).

% generating atoms with seed = 2250.
#negative(18,green(4)).
#negative(18,blue(3)).
#negative(18,green(2)).
#negative(18,valid).

% generating atoms with seed = 2375.
#positive(19,red(5)).
#positive(19,green(4)).
#positive(19,blue(3)).
#positive(19,valid).

% generating atoms with seed = 2500.
#negative(20,blue(2)).
#negative(20,green(5)).
#positive(20,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
