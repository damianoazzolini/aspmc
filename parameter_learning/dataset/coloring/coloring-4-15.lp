% Dataset coloring of size 4 and 15 interpretations

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
#learnable(edge(1,2)).
#learnable(edge(3,4)).
#learnable(edge(4,5)).


% generating atoms with seed = 79.
#negative(1,green(4)).
#positive(1,red(6)).

% generating atoms with seed = 158.
#positive(2,red(1)).
#negative(2,blue(5)).
#negative(2,valid).

% generating atoms with seed = 237.
#positive(3,red(4)).
#negative(3,green(2)).
#negative(3,blue(1)).
#positive(3,blue(3)).
#positive(3,blue(6)).

% generating atoms with seed = 316.
#positive(4,green(1)).

% generating atoms with seed = 395.
#negative(5,red(3)).
#positive(5,blue(2)).
#positive(5,green(1)).
#positive(5,valid).

% generating atoms with seed = 474.
#positive(6,green(1)).
#negative(6,valid).

% generating atoms with seed = 553.
#positive(7,green(1)).
#positive(7,green(3)).
#positive(7,green(2)).
#negative(7,blue(5)).

% generating atoms with seed = 632.
#negative(8,blue(2)).
#negative(8,red(1)).
#negative(8,blue(5)).

% generating atoms with seed = 711.
#positive(9,green(4)).
#positive(9,green(5)).
#negative(9,green(2)).
#negative(9,red(1)).
#negative(9,green(6)).

% generating atoms with seed = 790.
#positive(10,blue(4)).
#negative(10,green(1)).
#positive(10,green(3)).
#positive(10,valid).

% generating atoms with seed = 869.
#negative(11,green(6)).
#positive(11,blue(2)).
#negative(11,green(3)).
#negative(11,red(5)).

% generating atoms with seed = 948.
#positive(12,red(3)).
#negative(12,red(6)).
#positive(12,blue(1)).
#positive(12,green(5)).
#negative(12,blue(4)).

% generating atoms with seed = 1027.
#positive(13,red(1)).

% generating atoms with seed = 1106.
#negative(14,green(4)).
#negative(14,green(1)).
#negative(14,blue(3)).
#negative(14,red(2)).

% generating atoms with seed = 1185.
#positive(15,red(1)).
#positive(15,blue(5)).
#negative(15,blue(4)).
#positive(15,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
