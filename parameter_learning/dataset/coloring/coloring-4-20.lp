% Dataset coloring of size 4 and 20 interpretations

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
#learnable(edge(2,5)).
#learnable(edge(5,6)).
#learnable(edge(4,6)).


% generating atoms with seed = 104.
#positive(1,blue(2)).

% generating atoms with seed = 208.
#positive(2,red(5)).
#negative(2,blue(1)).
#positive(2,blue(4)).
#negative(2,valid).

% generating atoms with seed = 312.
#negative(3,green(6)).
#positive(3,blue(1)).

% generating atoms with seed = 416.
#negative(4,blue(1)).
#positive(4,blue(6)).
#negative(4,blue(4)).

% generating atoms with seed = 520.
#negative(5,green(1)).
#positive(5,valid).

% generating atoms with seed = 624.
#positive(6,red(1)).
#negative(6,green(3)).
#negative(6,valid).

% generating atoms with seed = 728.
#positive(7,blue(4)).

% generating atoms with seed = 832.
#positive(8,blue(3)).
#negative(8,red(6)).
#positive(8,blue(5)).
#negative(8,red(2)).
#positive(8,green(1)).

% generating atoms with seed = 936.
#negative(9,red(4)).
#negative(9,blue(1)).

% generating atoms with seed = 1040.
#negative(10,blue(2)).
#negative(10,blue(3)).
#negative(10,green(5)).
#positive(10,valid).

% generating atoms with seed = 1144.
#negative(11,green(4)).
#positive(11,red(5)).
#negative(11,red(2)).
#positive(11,green(1)).
#positive(11,green(3)).

% generating atoms with seed = 1248.
#positive(12,blue(6)).
#negative(12,red(5)).
#positive(12,blue(3)).
#positive(12,green(2)).
#negative(12,blue(4)).

% generating atoms with seed = 1352.
#positive(13,red(4)).
#positive(13,red(6)).
#positive(13,red(1)).

% generating atoms with seed = 1456.
#positive(14,blue(2)).
#positive(14,green(1)).
#negative(14,red(4)).
#negative(14,red(5)).

% generating atoms with seed = 1560.
#negative(15,red(6)).
#negative(15,blue(2)).
#positive(15,green(1)).
#negative(15,red(5)).
#positive(15,valid).

% generating atoms with seed = 1664.
#negative(16,green(6)).
#negative(16,blue(1)).
#negative(16,green(3)).
#negative(16,green(5)).

% generating atoms with seed = 1768.
#positive(17,green(4)).
#positive(17,valid).

% generating atoms with seed = 1872.
#negative(18,green(3)).
#positive(18,green(5)).
#negative(18,red(4)).

% generating atoms with seed = 1976.
#negative(19,red(6)).
#positive(19,valid).

% generating atoms with seed = 2080.
#positive(20,green(4)).
#negative(20,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
