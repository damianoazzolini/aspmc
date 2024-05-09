% Dataset coloring of size 4 and 10 interpretations

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
#learnable(edge(6,4)).
#learnable(edge(4,5)).
#learnable(edge(5,2)).


% generating atoms with seed = 54.
#positive(1,blue(4)).
#negative(1,green(3)).

% generating atoms with seed = 108.
#negative(2,red(6)).
#negative(2,blue(4)).
#negative(2,valid).

% generating atoms with seed = 162.
#negative(3,blue(6)).

% generating atoms with seed = 216.
#negative(4,red(6)).
#negative(4,green(4)).

% generating atoms with seed = 270.
#negative(5,red(3)).
#positive(5,green(6)).
#positive(5,valid).

% generating atoms with seed = 324.
#negative(6,blue(2)).
#negative(6,red(5)).
#negative(6,green(6)).
#positive(6,red(1)).
#negative(6,blue(4)).
#negative(6,valid).

% generating atoms with seed = 378.
#negative(7,blue(3)).

% generating atoms with seed = 432.
#positive(8,blue(6)).
#positive(8,red(4)).
#positive(8,green(5)).
#positive(8,red(3)).
#negative(8,blue(1)).

% generating atoms with seed = 486.
#negative(9,green(2)).
#negative(9,red(4)).

% generating atoms with seed = 540.
#negative(10,blue(5)).
#positive(10,red(3)).
#negative(10,green(6)).
#positive(10,green(4)).
#positive(10,red(2)).
#positive(10,valid).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
