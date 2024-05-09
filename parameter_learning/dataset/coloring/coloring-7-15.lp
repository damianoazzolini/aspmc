% Dataset coloring of size 7 and 15 interpretations

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
#learnable(edge(5,1)).
#learnable(edge(6,4)).
#learnable(edge(1,5)).
#learnable(edge(3,6)).
#learnable(edge(1,4)).
#learnable(edge(5,3)).


% generating atoms with seed = 127.
#positive(1,blue(5)).

% generating atoms with seed = 254.
#negative(2,green(5)).
#positive(2,blue(4)).
#positive(2,red(3)).
#negative(2,valid).

% generating atoms with seed = 381.
#positive(3,blue(4)).
#positive(3,red(1)).
#positive(3,green(2)).
#positive(3,red(6)).

% generating atoms with seed = 508.
#positive(4,green(6)).
#negative(4,red(4)).
#positive(4,green(1)).
#positive(4,blue(3)).
#positive(4,blue(2)).

% generating atoms with seed = 635.
#negative(5,blue(3)).
#positive(5,green(5)).
#positive(5,blue(6)).
#positive(5,valid).

% generating atoms with seed = 762.
#positive(6,green(2)).
#negative(6,red(3)).
#negative(6,red(5)).
#negative(6,valid).

% generating atoms with seed = 889.
#negative(7,red(6)).
#positive(7,red(5)).
#negative(7,blue(2)).
#positive(7,red(4)).
#positive(7,blue(1)).

% generating atoms with seed = 1016.
#positive(8,green(6)).
#negative(8,green(5)).
#positive(8,blue(2)).

% generating atoms with seed = 1143.
#negative(9,blue(3)).
#negative(9,green(5)).

% generating atoms with seed = 1270.
#positive(10,green(2)).
#negative(10,green(1)).
#negative(10,red(6)).
#positive(10,blue(4)).
#positive(10,red(3)).
#positive(10,valid).

% generating atoms with seed = 1397.
#positive(11,red(3)).

% generating atoms with seed = 1524.
#positive(12,red(3)).

% generating atoms with seed = 1651.
#positive(13,green(6)).

% generating atoms with seed = 1778.
#negative(14,blue(2)).

% generating atoms with seed = 1905.
#negative(15,blue(6)).
#positive(15,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
