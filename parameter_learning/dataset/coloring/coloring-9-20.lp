% Dataset coloring of size 9 and 20 interpretations

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
#learnable(edge(2,6)).
#learnable(edge(2,4)).
#learnable(edge(2,3)).
#learnable(edge(1,5)).
#learnable(edge(6,5)).
#learnable(edge(2,1)).
#learnable(edge(1,6)).
#learnable(edge(2,5)).


% generating atoms with seed = 209.
#negative(1,red(6)).
#positive(1,blue(2)).
#positive(1,red(4)).
#negative(1,blue(5)).
#negative(1,red(1)).

% generating atoms with seed = 418.
#positive(2,red(3)).
#negative(2,red(4)).
#positive(2,blue(5)).
#negative(2,valid).

% generating atoms with seed = 627.
#negative(3,blue(6)).
#negative(3,red(1)).
#negative(3,red(3)).

% generating atoms with seed = 836.
#negative(4,blue(1)).
#negative(4,red(2)).
#positive(4,red(3)).
#positive(4,green(6)).

% generating atoms with seed = 1045.
#positive(5,blue(6)).
#positive(5,valid).

% generating atoms with seed = 1254.
#positive(6,green(2)).
#negative(6,blue(6)).
#negative(6,blue(5)).
#negative(6,red(3)).
#negative(6,valid).

% generating atoms with seed = 1463.
#negative(7,red(2)).
#negative(7,red(6)).
#positive(7,green(5)).

% generating atoms with seed = 1672.
#positive(8,red(3)).
#positive(8,blue(6)).
#positive(8,red(1)).
#negative(8,red(5)).
#negative(8,red(4)).

% generating atoms with seed = 1881.
#negative(9,green(3)).
#positive(9,blue(5)).
#negative(9,red(2)).

% generating atoms with seed = 2090.
#negative(10,green(5)).
#negative(10,blue(4)).
#positive(10,valid).

% generating atoms with seed = 2299.
#negative(11,red(4)).
#negative(11,red(6)).

% generating atoms with seed = 2508.
#positive(12,red(1)).
#negative(12,red(5)).

% generating atoms with seed = 2717.
#negative(13,red(2)).
#positive(13,red(6)).
#positive(13,green(4)).
#positive(13,green(5)).
#negative(13,blue(3)).

% generating atoms with seed = 2926.
#positive(14,blue(5)).
#positive(14,red(3)).
#negative(14,green(4)).
#negative(14,green(6)).

% generating atoms with seed = 3135.
#positive(15,blue(5)).
#positive(15,green(6)).
#negative(15,blue(4)).
#negative(15,green(2)).
#positive(15,valid).

% generating atoms with seed = 3344.
#positive(16,blue(5)).
#negative(16,red(4)).
#negative(16,red(2)).

% generating atoms with seed = 3553.
#positive(17,green(4)).
#positive(17,green(2)).
#positive(17,blue(3)).
#positive(17,valid).

% generating atoms with seed = 3762.
#negative(18,blue(1)).
#positive(18,green(2)).

% generating atoms with seed = 3971.
#positive(19,blue(3)).
#negative(19,blue(5)).
#positive(19,red(1)).
#positive(19,valid).

% generating atoms with seed = 4180.
#negative(20,blue(3)).
#positive(20,red(5)).
#negative(20,green(4)).
#negative(20,red(2)).
#negative(20,valid).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
