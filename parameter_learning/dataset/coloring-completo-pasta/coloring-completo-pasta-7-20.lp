% Dataset coloring of size 7 and 20 interpretations

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


% generating atoms with seed = 167.
#negative(1,red(7)).
#positive(1,green(3)).
#negative(1,valid).

% generating atoms with seed = 334.
#negative(2,green(5)).
#negative(2,red(4)).
#positive(2,valid).

% generating atoms with seed = 501.
#positive(3,blue(3)).
#negative(3,red(4)).
#positive(3,green(5)).
#negative(3,red(6)).
#negative(3,valid).

% generating atoms with seed = 668.
#positive(4,red(1)).
#positive(4,red(5)).
#positive(4,red(2)).
#negative(4,valid).

% generating atoms with seed = 835.
#positive(5,blue(6)).
#positive(5,red(7)).
#negative(5,red(3)).
#positive(5,blue(4)).
#positive(5,valid).

% generating atoms with seed = 1002.
#positive(6,green(5)).
#positive(6,red(2)).
#positive(6,green(3)).
#negative(6,red(7)).
#positive(6,valid).

% generating atoms with seed = 1169.
#negative(7,red(5)).
#positive(7,blue(3)).
#negative(7,valid).

% generating atoms with seed = 1336.
#positive(8,red(7)).
#negative(8,red(3)).
#positive(8,blue(6)).
#positive(8,blue(1)).
#negative(8,valid).

% generating atoms with seed = 1503.
#negative(9,red(2)).
#positive(9,red(6)).
#positive(9,blue(5)).
#negative(9,valid).

% generating atoms with seed = 1670.
#negative(10,green(7)).
#positive(10,green(5)).
#negative(10,red(2)).
#positive(10,valid).

% generating atoms with seed = 1837.
#positive(11,red(7)).
#positive(11,blue(1)).
#positive(11,green(4)).
#positive(11,blue(3)).
#negative(11,valid).

% generating atoms with seed = 2004.
#negative(12,blue(1)).
#positive(12,green(3)).
#positive(12,blue(2)).
#positive(12,green(5)).
#negative(12,valid).

% generating atoms with seed = 2171.
#positive(13,blue(7)).
#positive(13,blue(4)).
#negative(13,valid).

% generating atoms with seed = 2338.
#negative(14,green(5)).
#positive(14,blue(6)).
#positive(14,green(7)).
#positive(14,blue(2)).
#negative(14,valid).

% generating atoms with seed = 2505.
#negative(15,blue(4)).
#positive(15,blue(7)).
#negative(15,blue(1)).
#positive(15,valid).

% generating atoms with seed = 2672.
#positive(16,red(4)).
#positive(16,green(3)).
#positive(16,red(7)).
#negative(16,valid).

% generating atoms with seed = 2839.
#positive(17,green(4)).
#positive(17,red(6)).
#positive(17,green(1)).
#positive(17,valid).

% generating atoms with seed = 3006.
#positive(18,blue(6)).
#positive(18,red(5)).
#positive(18,green(7)).
#negative(18,red(3)).
#negative(18,valid).

% generating atoms with seed = 3173.
#positive(19,red(3)).
#positive(19,red(7)).
#positive(19,valid).

% generating atoms with seed = 3340.
#negative(20,red(3)).
#positive(20,blue(5)).
#positive(20,blue(7)).
#positive(20,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
