% Dataset coloring of size 7 and 5 interpretations

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


% generating atoms with seed = 47.
#negative(1,green(1)).
#negative(1,green(6)).
#positive(1,green(7)).
#negative(1,valid).

% generating atoms with seed = 94.
#positive(2,red(2)).
#negative(2,green(4)).
#positive(2,red(6)).
#positive(2,green(7)).
#positive(2,valid).

% generating atoms with seed = 141.
#positive(3,red(7)).
#positive(3,green(5)).
#negative(3,blue(2)).
#positive(3,red(6)).
#negative(3,valid).

% generating atoms with seed = 188.
#negative(4,red(7)).
#negative(4,red(3)).
#negative(4,red(2)).
#negative(4,green(5)).
#negative(4,valid).

% generating atoms with seed = 235.
#negative(5,blue(6)).
#positive(5,red(1)).
#negative(5,red(2)).
#positive(5,valid).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
