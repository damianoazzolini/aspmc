0.4::small_chiken(1).
0.4::small_chiken(2).
0.4::small_chiken(3).
0.4::small_chiken(4).

fly(X):- small_chiken(X), \+ not_fly(X). 
not_fly(X):- small_chiken(X), \+ fly(X).    
query(fly(1)).

% 1 small_chikens: not fb < 1 b
b1:- small_chiken(1).
b1:- small_chiken(2).
b1:- small_chiken(3).
b1:- small_chiken(4).


:- b1, \+ fb1.
% 2 small_chikens: not fb < 1 b
b2:- small_chiken(1),small_chiken(2).
b2:- small_chiken(1),small_chiken(3).
b2:- small_chiken(1),small_chiken(4).
b2:- small_chiken(2),small_chiken(3).
b2:- small_chiken(2),small_chiken(4).
b2:- small_chiken(3),small_chiken(4).


:- b2, \+ fb1.
% 3 small_chikens: not fb < 2 b
b3:- small_chiken(1),small_chiken(2),small_chiken(3).
b3:- small_chiken(1),small_chiken(2),small_chiken(4).
b3:- small_chiken(1),small_chiken(3),small_chiken(4).
b3:- small_chiken(2),small_chiken(3),small_chiken(4).


:- b3, \+ fb2.
% 4 small_chikens: not fb < 2 b
b4:- small_chiken(1),small_chiken(2),small_chiken(3),small_chiken(4).


:- b4, \+ fb2.
fb1:- fly(1).
fb1:- fly(2).
fb1:- fly(3).
fb1:- fly(4).
fb2:- fly(1),fly(2).
fb2:- fly(1),fly(3).
fb2:- fly(1),fly(4).
fb2:- fly(2),fly(3).
fb2:- fly(2),fly(4).
fb2:- fly(3),fly(4).
0.4::small_chiken(1).
0.4::small_chiken(2).
0.4::small_chiken(3).
0.4::small_chiken(4).

fly(X):- small_chiken(X), \+ not_fly(X). 
not_fly(X):- small_chiken(X), \+ fly(X).    
query(fly(1)).

% 1 small_chikens: not fb < 0 b
% 2 small_chikens: not fb < 0 b
% 3 small_chikens: not fb < 0 b
% 4 small_chikens: not fb < 0 b
