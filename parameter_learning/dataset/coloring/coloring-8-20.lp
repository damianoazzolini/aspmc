% Dataset coloring of size 8 and 20 interpretations

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
#learnable(edge(2,5)).
#learnable(edge(6,4)).
#learnable(edge(5,1)).
#learnable(edge(6,2)).
#learnable(edge(1,2)).
#learnable(edge(4,5)).


% generating atoms with seed = 188.
#positive(1,red(3)).
#negative(1,red(2)).

% generating atoms with seed = 376.
#positive(2,green(4)).
#negative(2,blue(2)).
#negative(2,green(1)).
#positive(2,red(5)).
#negative(2,valid).

% generating atoms with seed = 564.
#positive(3,blue(2)).
#negative(3,red(4)).
#negative(3,green(5)).

% generating atoms with seed = 752.
#negative(4,red(6)).
#negative(4,green(3)).
#positive(4,blue(1)).
#positive(4,blue(5)).
#negative(4,red(4)).

% generating atoms with seed = 940.
#positive(5,red(3)).
#positive(5,blue(1)).
#negative(5,blue(5)).
#positive(5,valid).

% generating atoms with seed = 1128.
#negative(6,red(5)).
#negative(6,valid).

% generating atoms with seed = 1316.
#negative(7,blue(2)).
#negative(7,red(1)).

% generating atoms with seed = 1504.
#negative(8,blue(5)).
#positive(8,blue(2)).
#negative(8,blue(6)).
#negative(8,blue(4)).

% generating atoms with seed = 1692.
#positive(9,red(6)).
#positive(9,green(3)).

% generating atoms with seed = 1880.
#negative(10,blue(1)).
#positive(10,red(6)).
#positive(10,green(3)).
#positive(10,blue(4)).
#positive(10,blue(5)).
#positive(10,valid).

% generating atoms with seed = 2068.
#negative(11,green(4)).

% generating atoms with seed = 2256.
#negative(12,blue(5)).

% generating atoms with seed = 2444.
#negative(13,blue(6)).
#positive(13,blue(3)).
#positive(13,green(5)).
#positive(13,green(1)).

% generating atoms with seed = 2632.
#negative(14,red(6)).
#positive(14,blue(4)).

% generating atoms with seed = 2820.
#positive(15,green(2)).
#positive(15,red(1)).
#negative(15,green(4)).
#positive(15,red(5)).
#negative(15,blue(6)).
#positive(15,valid).

% generating atoms with seed = 3008.
#positive(16,red(4)).
#negative(16,green(2)).
#negative(16,red(1)).

% generating atoms with seed = 3196.
#negative(17,green(3)).
#positive(17,blue(6)).
#positive(17,valid).

% generating atoms with seed = 3384.
#negative(18,red(2)).

% generating atoms with seed = 3572.
#negative(19,red(6)).
#positive(19,blue(3)).
#negative(19,green(2)).
#negative(19,green(5)).
#positive(19,valid).

% generating atoms with seed = 3760.
#positive(20,blue(1)).
#negative(20,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
