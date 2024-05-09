% Dataset coloring of size 6 and 20 interpretations

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


% generating atoms with seed = 146.
#negative(1,blue(2)).
#negative(1,red(4)).
#negative(1,valid).

% generating atoms with seed = 292.
#positive(2,red(3)).
#positive(2,red(4)).
#positive(2,valid).

% generating atoms with seed = 438.
#positive(3,blue(5)).
#negative(3,red(6)).
#negative(3,valid).

% generating atoms with seed = 584.
#negative(4,green(6)).
#positive(4,red(2)).
#positive(4,green(5)).
#positive(4,red(4)).
#negative(4,valid).

% generating atoms with seed = 730.
#negative(5,blue(1)).
#negative(5,blue(4)).
#negative(5,red(6)).
#positive(5,valid).

% generating atoms with seed = 876.
#positive(6,blue(1)).
#negative(6,green(4)).
#positive(6,red(6)).
#negative(6,red(2)).
#positive(6,valid).

% generating atoms with seed = 1022.
#positive(7,blue(4)).
#positive(7,red(3)).
#negative(7,valid).

% generating atoms with seed = 1168.
#negative(8,red(5)).
#negative(8,blue(6)).
#positive(8,blue(2)).
#negative(8,red(4)).
#negative(8,valid).

% generating atoms with seed = 1314.
#positive(9,green(1)).
#positive(9,blue(6)).
#negative(9,red(5)).
#negative(9,valid).

% generating atoms with seed = 1460.
#negative(10,green(4)).
#negative(10,green(3)).
#negative(10,red(5)).
#positive(10,green(1)).
#positive(10,valid).

% generating atoms with seed = 1606.
#positive(11,green(5)).
#negative(11,red(1)).
#positive(11,blue(2)).
#positive(11,blue(3)).
#negative(11,valid).

% generating atoms with seed = 1752.
#positive(12,red(1)).
#positive(12,red(4)).
#negative(12,valid).

% generating atoms with seed = 1898.
#negative(13,blue(6)).
#negative(13,green(4)).
#negative(13,red(1)).
#negative(13,valid).

% generating atoms with seed = 2044.
#positive(14,green(6)).
#negative(14,blue(1)).
#negative(14,valid).

% generating atoms with seed = 2190.
#positive(15,red(3)).
#negative(15,blue(2)).
#positive(15,green(1)).
#positive(15,green(5)).
#positive(15,valid).

% generating atoms with seed = 2336.
#positive(16,blue(4)).
#positive(16,green(6)).
#negative(16,blue(3)).
#negative(16,valid).

% generating atoms with seed = 2482.
#negative(17,blue(4)).
#positive(17,green(1)).
#positive(17,valid).

% generating atoms with seed = 2628.
#negative(18,red(6)).
#positive(18,red(3)).
#positive(18,green(1)).
#negative(18,valid).

% generating atoms with seed = 2774.
#positive(19,green(6)).
#negative(19,green(1)).
#positive(19,red(3)).
#negative(19,blue(4)).
#positive(19,valid).

% generating atoms with seed = 2920.
#positive(20,red(4)).
#negative(20,red(3)).
#negative(20,red(6)).
#positive(20,green(2)).
#positive(20,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
