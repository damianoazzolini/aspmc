% Dataset coloring of size 8 and 15 interpretations

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
#learnable(edge(5,1)).
#learnable(edge(1,2)).
#learnable(edge(5,4)).
#learnable(edge(4,3)).
#learnable(edge(1,5)).
#learnable(edge(5,2)).


% generating atoms with seed = 143.
#negative(1,red(1)).
#positive(1,red(3)).

% generating atoms with seed = 286.
#positive(2,green(1)).
#negative(2,red(2)).
#positive(2,green(6)).
#positive(2,red(4)).
#negative(2,valid).

% generating atoms with seed = 429.
#negative(3,red(1)).
#positive(3,red(4)).
#positive(3,green(3)).
#negative(3,red(5)).
#positive(3,green(2)).

% generating atoms with seed = 572.
#positive(4,green(4)).
#positive(4,blue(3)).

% generating atoms with seed = 715.
#positive(5,red(1)).
#negative(5,red(3)).
#negative(5,blue(2)).
#positive(5,green(4)).
#negative(5,green(6)).
#positive(5,valid).

% generating atoms with seed = 858.
#negative(6,red(5)).
#negative(6,red(3)).
#negative(6,blue(6)).
#positive(6,green(1)).
#positive(6,red(4)).
#negative(6,valid).

% generating atoms with seed = 1001.
#positive(7,red(2)).

% generating atoms with seed = 1144.
#negative(8,green(4)).
#positive(8,red(5)).
#negative(8,red(2)).
#positive(8,green(1)).
#positive(8,green(3)).

% generating atoms with seed = 1287.
#negative(9,red(1)).
#positive(9,red(3)).
#negative(9,green(4)).
#negative(9,blue(2)).

% generating atoms with seed = 1430.
#positive(10,blue(6)).
#negative(10,blue(5)).
#positive(10,blue(4)).
#positive(10,valid).

% generating atoms with seed = 1573.
#negative(11,blue(1)).
#positive(11,red(2)).
#negative(11,red(4)).
#positive(11,red(6)).

% generating atoms with seed = 1716.
#negative(12,red(6)).

% generating atoms with seed = 1859.
#positive(13,green(5)).
#positive(13,blue(3)).
#positive(13,red(2)).

% generating atoms with seed = 2002.
#positive(14,green(5)).

% generating atoms with seed = 2145.
#negative(15,blue(6)).
#negative(15,blue(5)).
#negative(15,green(1)).
#negative(15,green(4)).
#positive(15,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
