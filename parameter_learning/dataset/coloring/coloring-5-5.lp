% Dataset coloring of size 5 and 5 interpretations

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
#learnable(edge(3,6)).
#learnable(edge(3,2)).
#learnable(edge(6,5)).
#learnable(edge(2,1)).


% generating atoms with seed = 35.
#positive(1,red(3)).
#positive(1,red(4)).
#positive(1,green(5)).
#positive(1,blue(2)).
#positive(1,blue(1)).

% generating atoms with seed = 70.
#negative(2,blue(3)).
#negative(2,valid).

% generating atoms with seed = 105.
#positive(3,blue(3)).
#negative(3,red(1)).
#positive(3,blue(5)).
#negative(3,green(6)).
#negative(3,red(4)).

% generating atoms with seed = 140.
#negative(4,green(1)).

% generating atoms with seed = 175.
#negative(5,red(2)).
#positive(5,blue(6)).
#negative(5,green(3)).
#negative(5,red(5)).
#positive(5,valid).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
