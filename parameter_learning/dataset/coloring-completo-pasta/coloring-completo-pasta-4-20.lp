% Dataset coloring of size 4 and 20 interpretations

red(X)  :- node(X), not blue(X),not green(X).
green(X):- node(X), not red(X), not blue(X).
blue(X) :- node(X), not red(X), not green(X).

e(X,Y) :- edge(X,Y).
e(X,Y) :- edge(Y,X).

c0 :- e(X,Y), red(X), red(Y).
c1 :- e(X,Y), green(X), green(Y).
c2 :- e(X,Y), blue(X), blue(Y).

valid :- not c0, not c1, not c2.

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


% generating atoms with seed = 104.
#negative(1,blue(2)).
#positive(1,green(1)).
#negative(1,valid).

% generating atoms with seed = 208.
#positive(2,red(2)).
#negative(2,blue(4)).
#positive(2,blue(3)).
#positive(2,valid).

% generating atoms with seed = 312.
#negative(3,red(4)).
#negative(3,red(3)).
#negative(3,valid).

% generating atoms with seed = 416.
#negative(4,blue(1)).
#positive(4,blue(4)).
#negative(4,blue(3)).
#negative(4,valid).

% generating atoms with seed = 520.
#negative(5,green(1)).
#positive(5,red(3)).
#positive(5,valid).

% generating atoms with seed = 624.
#positive(6,red(1)).
#negative(6,green(2)).
#positive(6,valid).

% generating atoms with seed = 728.
#positive(7,blue(4)).
#positive(7,blue(3)).
#negative(7,valid).

% generating atoms with seed = 832.
#negative(8,green(2)).
#negative(8,green(4)).
#positive(8,red(1)).
#negative(8,valid).

% generating atoms with seed = 936.
#negative(9,red(4)).
#negative(9,blue(1)).
#negative(9,valid).

% generating atoms with seed = 1040.
#negative(10,blue(2)).
#negative(10,red(4)).
#negative(10,green(3)).
#positive(10,valid).

% generating atoms with seed = 1144.
#negative(11,green(4)).
#positive(11,blue(1)).
#positive(11,red(2)).
#negative(11,valid).

% generating atoms with seed = 1248.
#negative(12,blue(3)).
#positive(12,green(2)).
#negative(12,valid).

% generating atoms with seed = 1352.
#positive(13,red(4)).
#positive(13,red(3)).
#positive(13,red(1)).
#negative(13,valid).

% generating atoms with seed = 1456.
#negative(14,blue(2)).
#positive(14,green(1)).
#positive(14,red(3)).
#negative(14,valid).

% generating atoms with seed = 1560.
#positive(15,blue(2)).
#positive(15,blue(1)).
#negative(15,green(3)).
#positive(15,valid).

% generating atoms with seed = 1664.
#positive(16,red(3)).
#negative(16,blue(4)).
#negative(16,green(1)).
#negative(16,valid).

% generating atoms with seed = 1768.
#negative(17,green(4)).
#negative(17,red(3)).
#positive(17,valid).

% generating atoms with seed = 1872.
#negative(18,green(3)).
#positive(18,green(2)).
#negative(18,red(4)).
#negative(18,valid).

% generating atoms with seed = 1976.
#negative(19,red(1)).
#negative(19,green(4)).
#positive(19,valid).

% generating atoms with seed = 2080.
#negative(20,green(4)).
#negative(20,green(3)).
#positive(20,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
