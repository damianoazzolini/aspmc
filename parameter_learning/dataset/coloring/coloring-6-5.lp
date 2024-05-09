% Dataset coloring of size 6 and 5 interpretations

red(X) :- node(X), \+ green(X), \+ blue(X).
green(X) :- node(X), \+ red(X), \+ blue(X).
blue(X) :- node(X), \+ red(X), \+ green(X).

e(X,Y) :- edge(X,Y).
e(Y,X) :- edge(Y,X).

c0 :- e(X,Y), red(X), red(Y).
c1 :- e(X,Y), green(X), green(Y).
c2 :- e(X,Y), blue(X), blue(Y).

valid :- \+ c0, \+ c1, \+ c2.

node(1).
node(2).
node(3).
node(4).
node(5).
node(6).

#learnable(edge(6,3)).
#learnable(edge(1,3)).
#learnable(edge(6,2)).
#learnable(edge(2,3)).
#learnable(edge(6,5)).
#learnable(edge(4,6)).


% generating atoms with seed = 41.
#positive(1,red(3)).
#positive(1,green(2)).
#negative(1,blue(5)).
#negative(1,green(4)).

% generating atoms with seed = 82.
#positive(2,blue(4)).
#positive(2,red(3)).
#negative(2,valid).

% generating atoms with seed = 123.
#positive(3,red(3)).

% generating atoms with seed = 164.
#positive(4,green(6)).

% generating atoms with seed = 205.
#positive(5,blue(4)).
#positive(5,blue(1)).
#negative(5,green(6)).
#negative(5,red(5)).
#positive(5,valid).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
