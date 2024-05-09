% Dataset coloring of size 4 and 15 interpretations

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


% generating atoms with seed = 79.
#negative(1,green(4)).
#positive(1,red(3)).
#negative(1,valid).

% generating atoms with seed = 158.
#positive(2,red(1)).
#negative(2,blue(3)).
#positive(2,valid).

% generating atoms with seed = 237.
#positive(3,red(2)).
#positive(3,red(3)).
#negative(3,blue(1)).
#negative(3,valid).

% generating atoms with seed = 316.
#negative(4,green(1)).
#positive(4,red(2)).
#negative(4,valid).

% generating atoms with seed = 395.
#negative(5,red(3)).
#positive(5,blue(1)).
#positive(5,green(2)).
#positive(5,valid).

% generating atoms with seed = 474.
#positive(6,green(1)).
#negative(6,green(2)).
#positive(6,valid).

% generating atoms with seed = 553.
#negative(7,green(1)).
#positive(7,green(2)).
#positive(7,green(3)).
#negative(7,valid).

% generating atoms with seed = 632.
#negative(8,blue(2)).
#negative(8,red(1)).
#negative(8,blue(4)).
#negative(8,valid).

% generating atoms with seed = 711.
#positive(9,blue(4)).
#negative(9,green(2)).
#negative(9,green(1)).
#negative(9,valid).

% generating atoms with seed = 790.
#positive(10,blue(4)).
#negative(10,green(1)).
#positive(10,green(2)).
#positive(10,valid).

% generating atoms with seed = 869.
#positive(11,red(4)).
#negative(11,red(3)).
#positive(11,blue(2)).
#negative(11,valid).

% generating atoms with seed = 948.
#positive(12,blue(1)).
#positive(12,red(2)).
#negative(12,green(4)).
#negative(12,valid).

% generating atoms with seed = 1027.
#negative(13,red(1)).
#positive(13,green(4)).
#negative(13,valid).

% generating atoms with seed = 1106.
#positive(14,green(4)).
#negative(14,green(1)).
#positive(14,blue(2)).
#negative(14,valid).

% generating atoms with seed = 1185.
#positive(15,red(1)).
#positive(15,blue(3)).
#negative(15,blue(4)).
#positive(15,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
