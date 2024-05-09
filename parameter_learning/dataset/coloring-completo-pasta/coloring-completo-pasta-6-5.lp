% Dataset coloring of size 6 and 5 interpretations

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


% generating atoms with seed = 41.
#negative(1,red(3)).
#positive(1,green(2)).
#positive(1,blue(5)).
#negative(1,valid).

% generating atoms with seed = 82.
#positive(2,blue(4)).
#positive(2,red(3)).
#positive(2,valid).

% generating atoms with seed = 123.
#negative(3,red(3)).
#positive(3,green(5)).
#negative(3,valid).

% generating atoms with seed = 164.
#negative(4,green(6)).
#negative(4,green(3)).
#negative(4,valid).

% generating atoms with seed = 205.
#positive(5,blue(4)).
#negative(5,blue(1)).
#positive(5,green(6)).
#positive(5,valid).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
