% Dataset coloring of size 5 and 15 interpretations

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

#learnable(edge(1,2)).
#learnable(edge(1,3)).
#learnable(edge(1,4)).
#learnable(edge(1,5)).
#learnable(edge(2,3)).
#learnable(edge(2,4)).
#learnable(edge(2,5)).
#learnable(edge(3,4)).
#learnable(edge(3,5)).
#learnable(edge(4,5)).


% generating atoms with seed = 95.
#positive(1,red(4)).
#positive(1,red(2)).
#negative(1,valid).

% generating atoms with seed = 190.
#negative(2,green(2)).
#negative(2,red(4)).
#positive(2,valid).

% generating atoms with seed = 285.
#negative(3,blue(4)).
#negative(3,red(5)).
#negative(3,green(2)).
#negative(3,valid).

% generating atoms with seed = 380.
#positive(4,blue(3)).
#positive(4,blue(5)).
#negative(4,valid).

% generating atoms with seed = 475.
#positive(5,blue(1)).
#negative(5,blue(5)).
#positive(5,valid).

% generating atoms with seed = 570.
#negative(6,red(2)).
#positive(6,red(4)).
#positive(6,valid).

% generating atoms with seed = 665.
#negative(7,green(5)).
#positive(7,red(3)).
#negative(7,valid).

% generating atoms with seed = 760.
#negative(8,green(1)).
#positive(8,red(2)).
#negative(8,valid).

% generating atoms with seed = 855.
#negative(9,red(3)).
#positive(9,red(1)).
#negative(9,valid).

% generating atoms with seed = 950.
#negative(10,blue(2)).
#negative(10,red(5)).
#positive(10,valid).

% generating atoms with seed = 1045.
#negative(11,green(4)).
#negative(11,red(5)).
#negative(11,valid).

% generating atoms with seed = 1140.
#negative(12,blue(2)).
#negative(12,green(4)).
#negative(12,green(5)).
#negative(12,valid).

% generating atoms with seed = 1235.
#negative(13,blue(5)).
#positive(13,green(4)).
#negative(13,blue(1)).
#negative(13,valid).

% generating atoms with seed = 1330.
#positive(14,red(2)).
#positive(14,green(1)).
#negative(14,green(4)).
#negative(14,valid).

% generating atoms with seed = 1425.
#positive(15,green(1)).
#positive(15,green(3)).
#negative(15,blue(2)).
#positive(15,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
