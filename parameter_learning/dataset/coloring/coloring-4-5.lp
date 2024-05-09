% Dataset coloring of size 4 and 5 interpretations

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
#learnable(edge(2,5)).
#learnable(edge(3,2)).


% generating atoms with seed = 29.
#negative(1,green(1)).
#negative(1,blue(6)).
#positive(1,red(4)).
#positive(1,green(5)).
#positive(1,green(3)).

% generating atoms with seed = 58.
#positive(2,red(2)).
#positive(2,red(3)).
#negative(2,green(4)).
#positive(2,green(5)).
#negative(2,green(6)).
#negative(2,valid).

% generating atoms with seed = 87.
#negative(3,red(6)).
#negative(3,red(5)).

% generating atoms with seed = 116.
#negative(4,blue(5)).
#positive(4,red(3)).
#negative(4,blue(1)).
#positive(4,green(2)).
#negative(4,red(6)).

% generating atoms with seed = 145.
#positive(5,red(5)).
#positive(5,red(4)).
#positive(5,blue(3)).
#positive(5,blue(6)).
#positive(5,valid).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
