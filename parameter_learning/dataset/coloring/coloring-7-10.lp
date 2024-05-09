% Dataset coloring of size 7 and 10 interpretations

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
#learnable(edge(5,1)).
#learnable(edge(4,3)).
#learnable(edge(2,5)).
#learnable(edge(6,5)).
#learnable(edge(2,6)).
#learnable(edge(5,6)).


% generating atoms with seed = 87.
#negative(1,red(6)).
#negative(1,red(5)).

% generating atoms with seed = 174.
#negative(2,red(4)).
#negative(2,valid).

% generating atoms with seed = 261.
#negative(3,red(1)).
#negative(3,blue(2)).
#negative(3,red(5)).
#positive(3,green(6)).

% generating atoms with seed = 348.
#positive(4,red(2)).
#negative(4,green(3)).
#negative(4,red(5)).

% generating atoms with seed = 435.
#positive(5,green(5)).
#positive(5,red(3)).
#positive(5,valid).

% generating atoms with seed = 522.
#positive(6,green(2)).
#negative(6,valid).

% generating atoms with seed = 609.
#negative(7,red(3)).
#negative(7,blue(2)).
#negative(7,red(4)).
#negative(7,green(1)).
#positive(7,blue(5)).

% generating atoms with seed = 696.
#negative(8,green(2)).
#negative(8,green(6)).

% generating atoms with seed = 783.
#positive(9,red(5)).
#positive(9,green(2)).
#positive(9,green(6)).
#positive(9,red(4)).
#negative(9,blue(1)).

% generating atoms with seed = 870.
#negative(10,green(4)).
#negative(10,green(1)).
#positive(10,valid).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
