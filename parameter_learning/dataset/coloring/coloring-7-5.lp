% Dataset coloring of size 7 and 5 interpretations

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
#learnable(edge(6,2)).
#learnable(edge(1,6)).
#learnable(edge(4,5)).
#learnable(edge(2,4)).
#learnable(edge(6,1)).
#learnable(edge(1,2)).


% generating atoms with seed = 47.
#positive(1,green(1)).
#negative(1,green(6)).
#negative(1,green(4)).

% generating atoms with seed = 94.
#negative(2,red(2)).
#positive(2,green(4)).
#positive(2,red(6)).
#negative(2,green(5)).
#negative(2,green(3)).
#negative(2,valid).

% generating atoms with seed = 141.
#positive(3,blue(1)).
#negative(3,red(5)).
#negative(3,red(6)).
#positive(3,blue(3)).
#positive(3,blue(2)).

% generating atoms with seed = 188.
#positive(4,red(3)).
#negative(4,red(2)).

% generating atoms with seed = 235.
#negative(5,blue(6)).
#positive(5,red(1)).
#negative(5,red(2)).
#positive(5,valid).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
