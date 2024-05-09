% Dataset coloring of size 8 and 10 interpretations

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
#learnable(edge(3,5)).
#learnable(edge(4,1)).
#learnable(edge(3,6)).
#learnable(edge(1,5)).
#learnable(edge(5,2)).
#learnable(edge(6,1)).
#learnable(edge(5,1)).


% generating atoms with seed = 98.
#negative(1,red(5)).
#positive(1,green(3)).
#positive(1,green(1)).

% generating atoms with seed = 196.
#positive(2,blue(6)).
#negative(2,red(1)).
#negative(2,blue(5)).
#negative(2,green(4)).
#negative(2,green(2)).
#negative(2,valid).

% generating atoms with seed = 294.
#negative(3,green(1)).
#positive(3,blue(3)).

% generating atoms with seed = 392.
#negative(4,green(4)).
#positive(4,blue(6)).
#positive(4,green(2)).
#positive(4,green(1)).
#positive(4,blue(3)).

% generating atoms with seed = 490.
#negative(5,green(5)).
#negative(5,blue(6)).
#positive(5,blue(1)).
#negative(5,blue(4)).
#positive(5,valid).

% generating atoms with seed = 588.
#positive(6,red(3)).
#positive(6,green(1)).
#positive(6,green(2)).
#positive(6,blue(6)).
#negative(6,valid).

% generating atoms with seed = 686.
#positive(7,green(5)).
#positive(7,blue(3)).
#positive(7,green(1)).
#positive(7,blue(4)).
#positive(7,green(6)).

% generating atoms with seed = 784.
#negative(8,red(5)).
#negative(8,red(3)).
#negative(8,blue(4)).
#positive(8,green(2)).

% generating atoms with seed = 882.
#positive(9,blue(6)).

% generating atoms with seed = 980.
#positive(10,red(3)).
#negative(10,green(2)).
#negative(10,blue(5)).
#negative(10,green(4)).
#positive(10,valid).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
