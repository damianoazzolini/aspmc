% Dataset coloring of size 8 and 20 interpretations

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
node(8).

#learnable(edge(1,2)).
#learnable(edge(1,3)).
#learnable(edge(1,4)).
#learnable(edge(1,5)).
#learnable(edge(1,6)).
#learnable(edge(1,7)).
#learnable(edge(1,8)).
#learnable(edge(2,3)).
#learnable(edge(2,4)).
#learnable(edge(2,5)).
#learnable(edge(2,6)).
#learnable(edge(2,7)).
#learnable(edge(2,8)).
#learnable(edge(3,4)).
#learnable(edge(3,5)).
#learnable(edge(3,6)).
#learnable(edge(3,7)).
#learnable(edge(3,8)).
#learnable(edge(4,5)).
#learnable(edge(4,6)).
#learnable(edge(4,7)).
#learnable(edge(4,8)).
#learnable(edge(5,6)).
#learnable(edge(5,7)).
#learnable(edge(5,8)).
#learnable(edge(6,7)).
#learnable(edge(6,8)).
#learnable(edge(7,8)).


% generating atoms with seed = 188.
#negative(1,red(5)).
#positive(1,red(2)).
#negative(1,green(8)).
#negative(1,valid).

% generating atoms with seed = 376.
#negative(2,green(8)).
#negative(2,blue(2)).
#negative(2,red(6)).
#positive(2,green(5)).
#positive(2,blue(3)).
#positive(2,valid).

% generating atoms with seed = 564.
#negative(3,blue(4)).
#positive(3,red(3)).
#negative(3,green(5)).
#negative(3,green(6)).
#negative(3,valid).

% generating atoms with seed = 752.
#positive(4,green(6)).
#negative(4,blue(1)).
#negative(4,valid).

% generating atoms with seed = 940.
#positive(5,red(5)).
#negative(5,blue(1)).
#positive(5,blue(4)).
#negative(5,blue(8)).
#positive(5,valid).

% generating atoms with seed = 1128.
#negative(6,green(3)).
#negative(6,blue(1)).
#positive(6,valid).

% generating atoms with seed = 1316.
#negative(7,blue(4)).
#positive(7,red(8)).
#negative(7,red(1)).
#negative(7,valid).

% generating atoms with seed = 1504.
#negative(8,blue(3)).
#positive(8,blue(6)).
#positive(8,blue(5)).
#negative(8,green(8)).
#negative(8,red(7)).
#negative(8,valid).

% generating atoms with seed = 1692.
#negative(9,green(4)).
#positive(9,blue(5)).
#positive(9,blue(1)).
#negative(9,valid).

% generating atoms with seed = 1880.
#positive(10,red(3)).
#positive(10,green(4)).
#positive(10,valid).

% generating atoms with seed = 2068.
#negative(11,green(8)).
#negative(11,blue(1)).
#negative(11,valid).

% generating atoms with seed = 2256.
#negative(12,red(5)).
#positive(12,red(2)).
#negative(12,valid).

% generating atoms with seed = 2444.
#negative(13,blue(5)).
#positive(13,green(4)).
#positive(13,green(1)).
#positive(13,green(6)).
#negative(13,blue(2)).
#negative(13,valid).

% generating atoms with seed = 2632.
#negative(14,blue(1)).
#negative(14,blue(5)).
#positive(14,blue(3)).
#negative(14,valid).

% generating atoms with seed = 2820.
#negative(15,red(7)).
#positive(15,red(2)).
#positive(15,green(5)).
#positive(15,valid).

% generating atoms with seed = 3008.
#negative(16,red(8)).
#negative(16,green(2)).
#positive(16,red(1)).
#negative(16,blue(7)).
#negative(16,valid).

% generating atoms with seed = 3196.
#negative(17,green(6)).
#positive(17,blue(5)).
#negative(17,blue(2)).
#positive(17,valid).

% generating atoms with seed = 3384.
#negative(18,red(3)).
#negative(18,blue(2)).
#negative(18,valid).

% generating atoms with seed = 3572.
#negative(19,green(1)).
#negative(19,red(7)).
#positive(19,blue(5)).
#positive(19,green(4)).
#positive(19,green(6)).
#positive(19,valid).

% generating atoms with seed = 3760.
#positive(20,blue(2)).
#negative(20,red(6)).
#positive(20,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
