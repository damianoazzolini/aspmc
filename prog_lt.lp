0.4::bird(1).
0.4::bird(2).
0.4::bird(3).
0.4::bird(4).
0.4::bird(5).

fly(X):- bird(X), \+ not_fly(X). 
not_fly(X):- bird(X), \+ fly(X).    
query(fly(1)).

% index(1..5).

% % lt(X,Y):- index(X), index(Y), X < Y.
% % lt(A,B):- true.
% % 1 birds: \+ fb < 1 b
% b1:- bird(X).


% :- b1, \+ fb1.
% % 2 birds: \+ fb < 2 b
% b2:- bird(X), bird(Y), lt(X,Y). % X < Y.

% :- b2, \+ fb2.
% % 3 birds: \+ fb < 2 b
% b3:- bird(X),bird(Y),bird(Z), lt(X,Y), lt(Y,Z). % X<Y,Y<Z.

% :- b3, \+ fb2.
% % 4 birds: \+ fb < 3 b
% b4:- bird(X),bird(Y),bird(Z),bird(W), lt(X,Y), lt(Y,Z), lt(Z,W). %  X<Y,Y<Z,Z<W.

% :- b4, \+ fb3.
% % 5 birds: \+ fb < 3 b
% b5:- bird(1),bird(2),bird(3),bird(4),bird(5).


% :- b5, \+ fb3.
% fb1:- fly(X).
% fb2:- fly(X),fly(Y), lt(X,Y). %X<Y.
% fb3:- fly(X),fly(Y),fly(Z), lt(X,Y), lt(Y,Z). % X<Y,Y<Z.


% % fly(1):- bird(A), bird(B).