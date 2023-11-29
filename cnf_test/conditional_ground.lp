{bird(1)}.
{bird(2)}.
% {bird(3)}.

fly(X):- bird(X), not not_fly(X). 
not_fly(X):- bird(X), not fly(X).

% :- #count{X:fly(X),bird(X)} = FB, #count{X:bird(X)} = B, 10*FB < 4*B.

% 1 birds: not fb < 1 b
b1:- bird(1).
b1:- bird(2).
% b1:- bird(3).


:- b1, not fb1.
% 2 birds: not fb < 1 b
b2:- bird(1),bird(2).
% b2:- bird(1),bird(3).
% b2:- bird(2),bird(3).


:- b2, not fb1.
% 3 birds: not fb < 2 b
% b3:- bird(1),bird(2),bird(3).


% :- b3, not fb2.
fb1:- fly(1).
fb1:- fly(2).
fb1:- fly(3).
% fb2:- fly(1),fly(2).
% fb2:- fly(1),fly(3).
% fb2:- fly(2),fly(3).