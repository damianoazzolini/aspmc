% Dataset coloring of size 8 and 10 interpretations

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


% generating atoms with seed = 98.
#positive(1,green(1)).
#positive(1,red(5)).
#negative(1,green(6)).
#positive(1,red(8)).
#negative(1,valid).

% generating atoms with seed = 196.
#negative(2,green(4)).
#negative(2,blue(7)).
#positive(2,valid).

% generating atoms with seed = 294.
#positive(3,green(1)).
#positive(3,blue(3)).
#negative(3,green(2)).
#negative(3,valid).

% generating atoms with seed = 392.
#positive(4,blue(8)).
#positive(4,blue(7)).
#negative(4,red(6)).
#negative(4,red(4)).
#negative(4,red(3)).
#negative(4,valid).

% generating atoms with seed = 490.
#positive(5,blue(8)).
#negative(5,red(6)).
#negative(5,blue(7)).
#positive(5,green(3)).
#negative(5,blue(2)).
#positive(5,valid).

% generating atoms with seed = 588.
#positive(6,red(5)).
#negative(6,green(1)).
#negative(6,red(7)).
#positive(6,blue(4)).
#negative(6,blue(2)).
#positive(6,valid).

% generating atoms with seed = 686.
#positive(7,blue(5)).
#positive(7,red(8)).
#positive(7,green(4)).
#positive(7,green(6)).
#negative(7,valid).

% generating atoms with seed = 784.
#negative(8,green(1)).
#negative(8,green(3)).
#negative(8,green(8)).
#negative(8,green(5)).
#positive(8,green(7)).
#negative(8,valid).

% generating atoms with seed = 882.
#positive(9,red(6)).
#positive(9,blue(8)).
#negative(9,valid).

% generating atoms with seed = 980.
#negative(10,red(5)).
#negative(10,red(8)).
#positive(10,green(3)).
#positive(10,green(6)).
#negative(10,red(4)).
#positive(10,valid).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
