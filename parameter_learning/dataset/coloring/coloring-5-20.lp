% Dataset coloring of size 5 and 20 interpretations

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
#learnable(edge(3,5)).
#learnable(edge(1,6)).
#learnable(edge(2,5)).
#learnable(edge(1,2)).


% generating atoms with seed = 125.
#positive(1,blue(2)).
#negative(1,blue(4)).

% generating atoms with seed = 250.
#negative(2,red(4)).
#negative(2,blue(6)).
#negative(2,blue(1)).
#negative(2,blue(2)).
#negative(2,valid).

% generating atoms with seed = 375.
#positive(3,red(3)).
#negative(3,red(5)).

% generating atoms with seed = 500.
#positive(4,blue(5)).
#positive(4,green(4)).
#negative(4,red(6)).
#negative(4,green(1)).

% generating atoms with seed = 625.
#positive(5,blue(3)).
#positive(5,red(6)).
#negative(5,green(4)).
#negative(5,green(2)).
#positive(5,valid).

% generating atoms with seed = 750.
#negative(6,red(4)).
#positive(6,green(2)).
#positive(6,red(1)).
#negative(6,valid).

% generating atoms with seed = 875.
#negative(7,blue(3)).
#negative(7,green(4)).
#negative(7,blue(2)).
#positive(7,red(5)).
#negative(7,blue(6)).

% generating atoms with seed = 1000.
#positive(8,red(6)).
#negative(8,green(4)).
#negative(8,green(1)).
#negative(8,blue(2)).

% generating atoms with seed = 1125.
#positive(9,green(3)).
#positive(9,red(6)).

% generating atoms with seed = 1250.
#positive(10,blue(4)).
#negative(10,green(2)).
#positive(10,valid).

% generating atoms with seed = 1375.
#positive(11,red(4)).

% generating atoms with seed = 1500.
#positive(12,green(1)).
#positive(12,red(4)).
#positive(12,green(5)).

% generating atoms with seed = 1625.
#negative(13,blue(3)).
#negative(13,blue(4)).
#positive(13,green(5)).

% generating atoms with seed = 1750.
#negative(14,red(3)).
#negative(14,blue(4)).
#positive(14,blue(2)).

% generating atoms with seed = 1875.
#positive(15,green(3)).
#positive(15,blue(4)).
#positive(15,valid).

% generating atoms with seed = 2000.
#positive(16,green(1)).
#negative(16,blue(4)).
#positive(16,blue(3)).
#positive(16,red(6)).

% generating atoms with seed = 2125.
#negative(17,blue(5)).
#positive(17,green(1)).
#negative(17,blue(3)).
#positive(17,valid).

% generating atoms with seed = 2250.
#negative(18,green(4)).
#negative(18,blue(3)).
#negative(18,green(5)).
#negative(18,blue(1)).

% generating atoms with seed = 2375.
#positive(19,red(5)).
#positive(19,green(4)).
#negative(19,red(2)).
#positive(19,valid).

% generating atoms with seed = 2500.
#positive(20,blue(2)).
#negative(20,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
