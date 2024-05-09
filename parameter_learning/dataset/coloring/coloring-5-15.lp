% Dataset coloring of size 5 and 15 interpretations

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
#learnable(edge(1,4)).
#learnable(edge(2,4)).
#learnable(edge(3,4)).
#learnable(edge(1,3)).


% generating atoms with seed = 95.
#negative(1,blue(5)).
#negative(1,red(6)).
#positive(1,red(4)).
#positive(1,red(1)).
#negative(1,blue(2)).

% generating atoms with seed = 190.
#positive(2,green(2)).
#negative(2,valid).

% generating atoms with seed = 285.
#negative(3,green(3)).
#negative(3,blue(6)).
#negative(3,red(5)).
#positive(3,green(2)).
#positive(3,green(4)).

% generating atoms with seed = 380.
#positive(4,blue(3)).
#positive(4,blue(5)).

% generating atoms with seed = 475.
#positive(5,blue(1)).
#positive(5,valid).

% generating atoms with seed = 570.
#negative(6,red(2)).
#negative(6,valid).

% generating atoms with seed = 665.
#positive(7,red(5)).
#positive(7,green(6)).
#positive(7,red(3)).
#negative(7,green(2)).
#negative(7,green(1)).

% generating atoms with seed = 760.
#negative(8,green(1)).
#positive(8,red(2)).

% generating atoms with seed = 855.
#negative(9,red(3)).
#positive(9,red(6)).

% generating atoms with seed = 950.
#negative(10,blue(2)).
#negative(10,red(5)).
#positive(10,valid).

% generating atoms with seed = 1045.
#positive(11,blue(6)).

% generating atoms with seed = 1140.
#positive(12,red(6)).
#negative(12,blue(5)).
#negative(12,green(3)).

% generating atoms with seed = 1235.
#positive(13,blue(5)).
#negative(13,green(4)).
#positive(13,blue(2)).
#negative(13,blue(3)).

% generating atoms with seed = 1330.
#positive(14,red(2)).
#positive(14,green(1)).
#negative(14,green(6)).

% generating atoms with seed = 1425.
#positive(15,green(1)).
#positive(15,green(3)).
#negative(15,blue(2)).
#positive(15,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
