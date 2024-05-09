% Dataset coloring of size 6 and 15 interpretations

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
node(5).
node(6).

#learnable(edge(1,2)).
#learnable(edge(1,3)).
#learnable(edge(1,4)).
#learnable(edge(1,5)).
#learnable(edge(1,6)).
#learnable(edge(2,3)).
#learnable(edge(2,4)).
#learnable(edge(2,5)).
#learnable(edge(2,6)).
#learnable(edge(3,4)).
#learnable(edge(3,5)).
#learnable(edge(3,6)).
#learnable(edge(4,5)).
#learnable(edge(4,6)).
#learnable(edge(5,6)).


% generating atoms with seed = 111.
#negative(1,green(3)).
#positive(1,green(2)).
#negative(1,valid).

% generating atoms with seed = 222.
#negative(2,green(2)).
#negative(2,red(4)).
#positive(2,valid).

% generating atoms with seed = 333.
#negative(3,green(3)).
#negative(3,green(2)).
#positive(3,green(1)).
#negative(3,blue(6)).
#negative(3,valid).

% generating atoms with seed = 444.
#positive(4,red(3)).
#positive(4,green(4)).
#negative(4,green(5)).
#negative(4,valid).

% generating atoms with seed = 555.
#positive(5,red(3)).
#negative(5,blue(2)).
#positive(5,valid).

% generating atoms with seed = 666.
#positive(6,green(4)).
#positive(6,blue(3)).
#negative(6,blue(1)).
#positive(6,valid).

% generating atoms with seed = 777.
#negative(7,green(4)).
#negative(7,blue(3)).
#negative(7,valid).

% generating atoms with seed = 888.
#negative(8,blue(4)).
#negative(8,green(5)).
#negative(8,valid).

% generating atoms with seed = 999.
#negative(9,blue(1)).
#positive(9,blue(6)).
#positive(9,green(5)).
#negative(9,blue(2)).
#negative(9,valid).

% generating atoms with seed = 1110.
#negative(10,blue(2)).
#positive(10,red(6)).
#negative(10,blue(1)).
#positive(10,valid).

% generating atoms with seed = 1221.
#negative(11,green(4)).
#negative(11,blue(6)).
#negative(11,valid).

% generating atoms with seed = 1332.
#positive(12,red(4)).
#negative(12,red(5)).
#negative(12,valid).

% generating atoms with seed = 1443.
#positive(13,blue(1)).
#negative(13,blue(3)).
#negative(13,valid).

% generating atoms with seed = 1554.
#negative(14,red(1)).
#negative(14,blue(2)).
#negative(14,red(4)).
#negative(14,valid).

% generating atoms with seed = 1665.
#positive(15,red(4)).
#negative(15,green(1)).
#positive(15,blue(2)).
#negative(15,red(3)).
#positive(15,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
