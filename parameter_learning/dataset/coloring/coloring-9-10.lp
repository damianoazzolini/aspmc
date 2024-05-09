% Dataset coloring of size 9 and 10 interpretations

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
#learnable(edge(2,4)).
#learnable(edge(6,1)).
#learnable(edge(4,3)).
#learnable(edge(2,3)).
#learnable(edge(1,3)).
#learnable(edge(4,1)).
#learnable(edge(2,1)).
#learnable(edge(5,3)).


% generating atoms with seed = 109.
#negative(1,green(2)).
#negative(1,blue(5)).
#negative(1,red(1)).

% generating atoms with seed = 218.
#positive(2,red(2)).
#positive(2,green(6)).
#positive(2,red(4)).
#negative(2,valid).

% generating atoms with seed = 327.
#negative(3,green(5)).

% generating atoms with seed = 436.
#negative(4,green(4)).
#positive(4,red(2)).
#negative(4,red(5)).
#negative(4,blue(6)).

% generating atoms with seed = 545.
#negative(5,blue(6)).
#negative(5,red(1)).
#positive(5,valid).

% generating atoms with seed = 654.
#negative(6,blue(4)).
#negative(6,blue(3)).
#positive(6,blue(1)).
#positive(6,green(5)).
#negative(6,blue(6)).
#negative(6,valid).

% generating atoms with seed = 763.
#positive(7,green(1)).
#positive(7,red(2)).
#positive(7,blue(3)).
#positive(7,blue(5)).
#negative(7,blue(4)).

% generating atoms with seed = 872.
#positive(8,red(4)).
#positive(8,green(5)).
#positive(8,blue(6)).
#negative(8,blue(3)).
#negative(8,red(1)).

% generating atoms with seed = 981.
#positive(9,red(1)).
#negative(9,green(4)).

% generating atoms with seed = 1090.
#negative(10,green(2)).
#negative(10,blue(4)).
#negative(10,red(3)).
#positive(10,blue(6)).
#positive(10,valid).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
