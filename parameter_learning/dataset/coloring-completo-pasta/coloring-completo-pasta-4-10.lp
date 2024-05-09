% Dataset coloring of size 4 and 10 interpretations

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

#learnable(edge(1,2)).
#learnable(edge(1,3)).
#learnable(edge(1,4)).
#learnable(edge(2,3)).
#learnable(edge(2,4)).
#learnable(edge(3,4)).


% generating atoms with seed = 54.
#positive(1,blue(4)).
#negative(1,green(2)).
#negative(1,valid).

% generating atoms with seed = 108.
#negative(2,blue(1)).
#negative(2,blue(3)).
#positive(2,valid).

% generating atoms with seed = 162.
#negative(3,blue(2)).
#positive(3,green(1)).
#negative(3,valid).

% generating atoms with seed = 216.
#negative(4,blue(2)).
#negative(4,green(3)).
#negative(4,valid).

% generating atoms with seed = 270.
#positive(5,red(3)).
#negative(5,blue(4)).
#positive(5,valid).

% generating atoms with seed = 324.
#positive(6,red(4)).
#negative(6,green(3)).
#positive(6,valid).

% generating atoms with seed = 378.
#negative(7,blue(3)).
#positive(7,blue(2)).
#negative(7,valid).

% generating atoms with seed = 432.
#positive(8,green(1)).
#positive(8,blue(3)).
#positive(8,red(2)).
#negative(8,valid).

% generating atoms with seed = 486.
#negative(9,green(2)).
#negative(9,red(3)).
#negative(9,valid).

% generating atoms with seed = 540.
#negative(10,green(1)).
#negative(10,blue(3)).
#positive(10,blue(4)).
#positive(10,valid).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
