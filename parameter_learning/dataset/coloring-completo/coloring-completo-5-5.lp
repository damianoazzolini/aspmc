% Dataset coloring of size 5 and 5 interpretations

red(X)  :- node(X), \+ blue(X),\+ green(X).
green(X):- node(X), \+ red(X), \+ blue(X).
blue(X) :- node(X), \+ red(X), \+ green(X).

e(X,Y) :- edge(X,Y).
e(X,Y) :- edge(Y,X).

c0 :- e(X,Y), red(X), red(Y).
c1 :- e(X,Y), green(X), green(Y).
c2 :- e(X,Y), blue(X), blue(Y).

valid :- \+ c0, \+ c1, \+ c2.

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


% generating atoms with seed = 35.
#positive(1,blue(2)).
#positive(1,red(4)).
#positive(1,green(3)).
#negative(1,valid).

% generating atoms with seed = 70.
#negative(2,blue(3)).
#positive(2,green(5)).
#positive(2,valid).

% generating atoms with seed = 105.
#negative(3,red(5)).
#negative(3,green(1)).
#negative(3,blue(4)).
#negative(3,valid).

% generating atoms with seed = 140.
#positive(4,green(1)).
#positive(4,blue(2)).
#negative(4,valid).

% generating atoms with seed = 175.
#negative(5,red(2)).
#positive(5,green(3)).
#negative(5,red(5)).
#positive(5,valid).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
