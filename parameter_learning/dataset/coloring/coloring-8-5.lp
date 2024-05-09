% Dataset coloring of size 8 and 5 interpretations

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
#learnable(edge(4,3)).
#learnable(edge(6,4)).
#learnable(edge(2,4)).
#learnable(edge(1,2)).
#learnable(edge(5,2)).
#learnable(edge(5,1)).
#learnable(edge(1,4)).


% generating atoms with seed = 53.
#negative(1,green(2)).
#positive(1,blue(6)).
#positive(1,blue(5)).
#positive(1,green(4)).
#negative(1,blue(3)).

% generating atoms with seed = 106.
#positive(2,blue(1)).
#negative(2,green(6)).
#negative(2,green(2)).
#positive(2,red(3)).
#negative(2,valid).

% generating atoms with seed = 159.
#positive(3,blue(2)).
#negative(3,red(5)).
#positive(3,blue(3)).
#negative(3,red(1)).

% generating atoms with seed = 212.
#positive(4,red(5)).
#negative(4,red(6)).
#negative(4,blue(3)).
#positive(4,red(1)).

% generating atoms with seed = 265.
#positive(5,green(4)).
#negative(5,blue(5)).
#positive(5,red(3)).
#positive(5,red(6)).
#positive(5,valid).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
