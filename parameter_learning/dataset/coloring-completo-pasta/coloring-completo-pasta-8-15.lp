% Dataset coloring of size 8 and 15 interpretations

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
node(8).

#learnable(edge(1,2)).
#learnable(edge(1,3)).
#learnable(edge(1,4)).
#learnable(edge(1,5)).
#learnable(edge(1,6)).
#learnable(edge(1,7)).
#learnable(edge(1,8)).
#learnable(edge(2,3)).
#learnable(edge(2,4)).
#learnable(edge(2,5)).
#learnable(edge(2,6)).
#learnable(edge(2,7)).
#learnable(edge(2,8)).
#learnable(edge(3,4)).
#learnable(edge(3,5)).
#learnable(edge(3,6)).
#learnable(edge(3,7)).
#learnable(edge(3,8)).
#learnable(edge(4,5)).
#learnable(edge(4,6)).
#learnable(edge(4,7)).
#learnable(edge(4,8)).
#learnable(edge(5,6)).
#learnable(edge(5,7)).
#learnable(edge(5,8)).
#learnable(edge(6,7)).
#learnable(edge(6,8)).
#learnable(edge(7,8)).


% generating atoms with seed = 143.
#positive(1,red(1)).
#negative(1,red(3)).
#positive(1,red(4)).
#negative(1,valid).

% generating atoms with seed = 286.
#positive(2,green(2)).
#negative(2,red(7)).
#positive(2,blue(1)).
#positive(2,green(6)).
#negative(2,red(8)).
#positive(2,valid).

% generating atoms with seed = 429.
#negative(3,green(1)).
#negative(3,red(2)).
#negative(3,valid).

% generating atoms with seed = 572.
#negative(4,green(7)).
#positive(4,blue(3)).
#negative(4,blue(4)).
#negative(4,valid).

% generating atoms with seed = 715.
#positive(5,red(3)).
#negative(5,red(1)).
#positive(5,valid).

% generating atoms with seed = 858.
#negative(6,red(6)).
#negative(6,blue(4)).
#positive(6,valid).

% generating atoms with seed = 1001.
#positive(7,red(4)).
#negative(7,green(6)).
#negative(7,valid).

% generating atoms with seed = 1144.
#negative(8,green(8)).
#positive(8,blue(2)).
#negative(8,red(3)).
#positive(8,green(1)).
#positive(8,green(4)).
#negative(8,valid).

% generating atoms with seed = 1287.
#positive(9,red(2)).
#negative(9,red(3)).
#negative(9,green(4)).
#positive(9,blue(5)).
#positive(9,blue(8)).
#negative(9,valid).

% generating atoms with seed = 1430.
#negative(10,blue(7)).
#negative(10,red(5)).
#negative(10,blue(4)).
#negative(10,blue(8)).
#positive(10,valid).

% generating atoms with seed = 1573.
#positive(11,blue(2)).
#negative(11,red(1)).
#positive(11,red(4)).
#negative(11,green(3)).
#negative(11,blue(5)).
#negative(11,valid).

% generating atoms with seed = 1716.
#positive(12,red(2)).
#negative(12,green(5)).
#negative(12,valid).

% generating atoms with seed = 1859.
#positive(13,blue(8)).
#positive(13,blue(3)).
#negative(13,red(2)).
#negative(13,red(4)).
#negative(13,valid).

% generating atoms with seed = 2002.
#positive(14,blue(6)).
#positive(14,red(5)).
#negative(14,valid).

% generating atoms with seed = 2145.
#positive(15,green(1)).
#positive(15,green(6)).
#negative(15,green(4)).
#positive(15,green(3)).
#positive(15,green(8)).
#positive(15,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
