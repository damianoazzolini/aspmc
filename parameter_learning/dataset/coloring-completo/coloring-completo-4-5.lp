% Dataset coloring of size 4 and 5 interpretations

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

#learnable(edge(1,2)).
#learnable(edge(1,3)).
#learnable(edge(1,4)).
#learnable(edge(2,3)).
#learnable(edge(2,4)).
#learnable(edge(3,4)).


% generating atoms with seed = 29.
#negative(1,blue(3)).
#positive(1,green(4)).
#negative(1,valid).

% generating atoms with seed = 58.
#negative(2,blue(2)).
#negative(2,red(4)).
#positive(2,valid).

% generating atoms with seed = 87.
#positive(3,blue(2)).
#positive(3,green(1)).
#negative(3,valid).

% generating atoms with seed = 116.
#positive(4,blue(1)).
#positive(4,blue(2)).
#negative(4,green(3)).
#negative(4,valid).

% generating atoms with seed = 145.
#positive(5,green(1)).
#positive(5,blue(2)).
#positive(5,blue(4)).
#positive(5,valid).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
