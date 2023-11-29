b1:- bird(1).
b1:- bird(2).
b1:- bird(3).

b2:- bird(1), bird(2).
b2:- bird(1), bird(3).
b2:- bird(2), bird(3).

b3:- bird(1), bird(2), bird(3).


fb1:- fly(1).
fb1:- fly(2).
fb1:- fly(3).

fb2:- fly(1), fly(2).
fb2:- fly(1), fly(3).
fb2:- fly(2), fly(3).

fb3:- fly(1), fly(2), fly(3).

% :- #count{X:fly(X),bird(X)} = FB, #count{X:bird(X)} = B, 10*FB<6*B.

:- b3, \+ fb2.
:- b2, \+ fb2.
:- b1, \+ fb1.

0.4::bird(1).
0.4::bird(2).
0.4::bird(3).
% 0.4::bird(4).

fly(X):- bird(X), \+ not_fly(X).
not_fly(X):- bird(X), \+ fly(X).

query(fly(1)).