% Dataset coloring of size 9 and 5 interpretations

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
#learnable(edge(6,5)).
#learnable(edge(1,5)).
#learnable(edge(3,6)).
#learnable(edge(1,2)).
#learnable(edge(2,3)).
#learnable(edge(4,5)).
#learnable(edge(4,2)).
#learnable(edge(4,3)).


% generating atoms with seed = 59.
#negative(1,blue(1)).
#negative(1,red(5)).

% generating atoms with seed = 118.
#positive(2,red(3)).
#negative(2,green(4)).
#negative(2,valid).

% generating atoms with seed = 177.
#positive(3,green(4)).
#positive(3,red(6)).

% generating atoms with seed = 236.
#negative(4,blue(4)).
#positive(4,red(3)).
#positive(4,blue(6)).

% generating atoms with seed = 295.
#positive(5,green(6)).
#negative(5,blue(3)).
#positive(5,red(5)).
#positive(5,valid).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
