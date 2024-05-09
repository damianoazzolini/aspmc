% Dataset coloring of size 7 and 20 interpretations

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
#learnable(edge(4,2)).
#learnable(edge(2,1)).
#learnable(edge(6,2)).
#learnable(edge(2,4)).
#learnable(edge(1,3)).


% generating atoms with seed = 167.
#positive(1,green(1)).
#positive(1,green(5)).

% generating atoms with seed = 334.
#negative(2,green(5)).
#negative(2,red(4)).
#negative(2,valid).

% generating atoms with seed = 501.
#positive(3,green(6)).
#negative(3,blue(2)).
#negative(3,green(4)).

% generating atoms with seed = 668.
#positive(4,red(1)).
#positive(4,red(5)).
#positive(4,red(2)).
#negative(4,red(6)).

% generating atoms with seed = 835.
#negative(5,blue(6)).
#positive(5,green(2)).
#negative(5,blue(1)).
#negative(5,green(5)).
#negative(5,green(4)).
#positive(5,valid).

% generating atoms with seed = 1002.
#positive(6,green(5)).
#positive(6,red(2)).
#negative(6,green(3)).
#positive(6,red(4)).
#negative(6,blue(1)).
#negative(6,valid).

% generating atoms with seed = 1169.
#negative(7,red(5)).

% generating atoms with seed = 1336.
#negative(8,green(1)).
#positive(8,blue(3)).
#negative(8,blue(2)).
#positive(8,red(6)).
#negative(8,blue(4)).

% generating atoms with seed = 1503.
#positive(9,red(2)).
#positive(9,red(6)).
#positive(9,blue(5)).
#positive(9,blue(3)).

% generating atoms with seed = 1670.
#negative(10,blue(4)).
#positive(10,red(5)).
#negative(10,red(1)).
#positive(10,green(3)).
#positive(10,valid).

% generating atoms with seed = 1837.
#positive(11,red(1)).
#positive(11,green(6)).
#positive(11,red(4)).
#positive(11,blue(5)).
#positive(11,green(3)).

% generating atoms with seed = 2004.
#negative(12,blue(1)).
#positive(12,green(3)).
#positive(12,blue(2)).
#positive(12,blue(6)).
#positive(12,green(4)).

% generating atoms with seed = 2171.
#positive(13,green(5)).
#negative(13,green(6)).

% generating atoms with seed = 2338.
#positive(14,green(5)).
#negative(14,blue(6)).
#positive(14,red(3)).
#negative(14,red(4)).
#positive(14,blue(2)).

% generating atoms with seed = 2505.
#positive(15,blue(4)).
#negative(15,red(6)).
#negative(15,blue(1)).
#positive(15,valid).

% generating atoms with seed = 2672.
#negative(16,red(4)).
#positive(16,green(3)).
#negative(16,blue(2)).

% generating atoms with seed = 2839.
#positive(17,green(4)).
#positive(17,red(6)).
#negative(17,green(1)).
#negative(17,blue(3)).
#positive(17,valid).

% generating atoms with seed = 3006.
#positive(18,blue(1)).
#negative(18,blue(4)).
#positive(18,red(5)).
#positive(18,blue(6)).
#negative(18,green(3)).

% generating atoms with seed = 3173.
#positive(19,red(3)).
#positive(19,red(1)).
#positive(19,valid).

% generating atoms with seed = 3340.
#negative(20,red(3)).
#positive(20,blue(5)).
#positive(20,red(2)).
#negative(20,red(6)).
#negative(20,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
