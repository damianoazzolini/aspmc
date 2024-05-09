% Dataset coloring of size 7 and 15 interpretations

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
node(7).

#learnable(edge(1,2)).
#learnable(edge(1,3)).
#learnable(edge(1,4)).
#learnable(edge(1,5)).
#learnable(edge(1,6)).
#learnable(edge(1,7)).
#learnable(edge(2,3)).
#learnable(edge(2,4)).
#learnable(edge(2,5)).
#learnable(edge(2,6)).
#learnable(edge(2,7)).
#learnable(edge(3,4)).
#learnable(edge(3,5)).
#learnable(edge(3,6)).
#learnable(edge(3,7)).
#learnable(edge(4,5)).
#learnable(edge(4,6)).
#learnable(edge(4,7)).
#learnable(edge(5,6)).
#learnable(edge(5,7)).
#learnable(edge(6,7)).


% generating atoms with seed = 127.
#negative(1,blue(5)).
#negative(1,red(6)).
#negative(1,valid).

% generating atoms with seed = 254.
#negative(2,green(5)).
#positive(2,blue(4)).
#positive(2,red(3)).
#positive(2,valid).

% generating atoms with seed = 381.
#positive(3,blue(4)).
#positive(3,red(1)).
#positive(3,green(2)).
#negative(3,valid).

% generating atoms with seed = 508.
#positive(4,blue(7)).
#positive(4,green(4)).
#positive(4,red(1)).
#positive(4,green(5)).
#negative(4,valid).

% generating atoms with seed = 635.
#negative(5,blue(3)).
#positive(5,green(5)).
#positive(5,blue(6)).
#positive(5,valid).

% generating atoms with seed = 762.
#negative(6,red(3)).
#positive(6,red(5)).
#positive(6,green(1)).
#negative(6,blue(4)).
#positive(6,valid).

% generating atoms with seed = 889.
#positive(7,blue(5)).
#negative(7,blue(2)).
#positive(7,red(1)).
#negative(7,red(4)).
#negative(7,valid).

% generating atoms with seed = 1016.
#positive(8,green(6)).
#positive(8,green(5)).
#negative(8,red(7)).
#negative(8,valid).

% generating atoms with seed = 1143.
#negative(9,blue(6)).
#negative(9,green(2)).
#positive(9,green(5)).
#negative(9,red(3)).
#negative(9,valid).

% generating atoms with seed = 1270.
#positive(10,red(7)).
#positive(10,red(4)).
#negative(10,blue(3)).
#positive(10,red(6)).
#positive(10,valid).

% generating atoms with seed = 1397.
#negative(11,red(3)).
#positive(11,blue(5)).
#negative(11,valid).

% generating atoms with seed = 1524.
#positive(12,red(3)).
#positive(12,red(6)).
#negative(12,valid).

% generating atoms with seed = 1651.
#negative(13,green(6)).
#negative(13,green(1)).
#negative(13,valid).

% generating atoms with seed = 1778.
#negative(14,blue(2)).
#negative(14,red(3)).
#negative(14,valid).

% generating atoms with seed = 1905.
#negative(15,blue(7)).
#negative(15,red(6)).
#positive(15,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
