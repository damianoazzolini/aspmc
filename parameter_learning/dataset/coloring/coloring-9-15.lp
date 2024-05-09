% Dataset coloring of size 9 and 15 interpretations

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
#learnable(edge(4,2)).
#learnable(edge(5,3)).
#learnable(edge(4,6)).
#learnable(edge(3,4)).
#learnable(edge(3,2)).
#learnable(edge(2,5)).
#learnable(edge(6,1)).
#learnable(edge(4,1)).


% generating atoms with seed = 159.
#positive(1,blue(2)).
#negative(1,red(5)).
#positive(1,blue(3)).
#negative(1,red(1)).

% generating atoms with seed = 318.
#positive(2,green(4)).
#negative(2,valid).

% generating atoms with seed = 477.
#positive(3,red(4)).
#negative(3,blue(3)).
#negative(3,blue(2)).
#negative(3,green(6)).
#positive(3,red(1)).

% generating atoms with seed = 636.
#negative(4,red(1)).
#negative(4,blue(6)).

% generating atoms with seed = 795.
#negative(5,green(4)).
#negative(5,green(2)).
#negative(5,red(5)).
#positive(5,red(3)).
#positive(5,valid).

% generating atoms with seed = 954.
#positive(6,red(5)).
#positive(6,blue(2)).
#negative(6,valid).

% generating atoms with seed = 1113.
#negative(7,red(1)).

% generating atoms with seed = 1272.
#negative(8,red(5)).
#negative(8,blue(2)).

% generating atoms with seed = 1431.
#positive(9,green(2)).
#positive(9,blue(5)).
#negative(9,blue(3)).
#negative(9,red(4)).
#positive(9,green(1)).

% generating atoms with seed = 1590.
#negative(10,green(6)).
#positive(10,valid).

% generating atoms with seed = 1749.
#negative(11,green(5)).
#negative(11,red(4)).

% generating atoms with seed = 1908.
#positive(12,green(6)).
#positive(12,red(5)).

% generating atoms with seed = 2067.
#positive(13,red(5)).

% generating atoms with seed = 2226.
#negative(14,red(5)).

% generating atoms with seed = 2385.
#negative(15,blue(1)).
#positive(15,green(5)).
#positive(15,blue(4)).
#negative(15,green(2)).
#positive(15,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
