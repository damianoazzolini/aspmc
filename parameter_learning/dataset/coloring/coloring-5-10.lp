% Dataset coloring of size 5 and 10 interpretations

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
#learnable(edge(4,3)).
#learnable(edge(3,1)).
#learnable(edge(4,2)).
#learnable(edge(3,4)).


% generating atoms with seed = 65.
#positive(1,green(3)).
#negative(1,red(6)).
#positive(1,green(5)).
#positive(1,green(4)).

% generating atoms with seed = 130.
#positive(2,green(4)).
#positive(2,blue(5)).
#positive(2,red(6)).
#positive(2,red(2)).
#negative(2,red(3)).
#negative(2,valid).

% generating atoms with seed = 195.
#positive(3,red(4)).
#negative(3,blue(2)).
#negative(3,green(3)).
#negative(3,blue(1)).
#negative(3,blue(6)).

% generating atoms with seed = 260.
#negative(4,green(1)).
#positive(4,blue(6)).

% generating atoms with seed = 325.
#positive(5,blue(2)).
#positive(5,blue(1)).
#negative(5,red(3)).
#positive(5,red(5)).
#positive(5,red(4)).
#positive(5,valid).

% generating atoms with seed = 390.
#positive(6,red(5)).
#positive(6,blue(6)).
#negative(6,red(4)).
#negative(6,green(1)).
#positive(6,blue(3)).
#negative(6,valid).

% generating atoms with seed = 455.
#positive(7,blue(4)).

% generating atoms with seed = 520.
#negative(8,green(1)).

% generating atoms with seed = 585.
#positive(9,blue(1)).

% generating atoms with seed = 650.
#positive(10,blue(6)).
#negative(10,green(2)).
#negative(10,green(5)).
#positive(10,valid).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
