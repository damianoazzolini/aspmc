% 0.4::bird(1).
% 0.4::bird(2).
% 0.4::bird(3).
% 0.4::bird(4).
% 0.4::bird(5).
% 0.4::bird(6).
% 0.4::bird(7).
% 0.4::bird(8).
% 0.4::bird(9).
% 0.4::bird(10).
% 0.4::bird(11).


% fly(X):- bird(X), \+ not_fly(X). 
% not_fly(X):- bird(X), \+ fly(X).    
% query(fly(1)).

% 0.4::sunshine.
% 0.8::warm.
% 0.3::tired.
% 0.6::wind.

% run :- \+ walk, sunshine, \+ wind.
% walk :- \+ run.
% sick :- run, tired.
% sick :- \+ warm.

% query(sick).


% 0.6::edge(1,2). 0.1::edge(1,3).
% 0.4::edge(2,5). 0.3::edge(2,6).
% 0.3::edge(3,4). 0.8::edge(4,5).
% 0.2::edge(5,6).
% node(1).
% node(2).
% node(3).
% node(4).
% node(5).
% node(6).
% red(X) :- node(X), \+ green(X), \+ blue(X).
% green(X) :- node(X), \+ red(X), \+ blue(X).
% blue(X) :- node(X), \+ red(X), \+ green(X).

% e(X,Y) :- edge(X,Y).
% e(Y,X) :- edge(Y,X).

% :- e(X,Y), red(X), red(Y).
% :- e(X,Y), green(X), green(Y).
% :- e(X,Y), blue(X), blue(Y).

% red(1).
% green(4).
% green(6).

% query(blue(3)).
0.4::person(1).
0.4::person(2).
0.4::person(3).
0.4::person(4).
0.4::person(5).

buy(X):- reached(X), \+ not_buy(X). 
not_buy(X):- reached(X), \+ buy(X).    
query(buy(1)).


advertise(1,2):- person(1), person(2).
advertise(2,3):- person(2), person(3).
advertise(2,4):- person(2), person(4).
advertise(3,5):- person(3), person(5).
advertise(4,5):- person(4), person(5).

reach(A,B):- advertise(A,B).
reach(A,B):- advertise(A,C), reach(C,B).

reached(X):- person(X), reach(Y,X).
reached(X):- person(X), advertise(X,Y).

% 1 person: not fb < 1 b
b1:- reached(1).
b1:- reached(2).
b1:- reached(3).
b1:- reached(4).
b1:- reached(5).


:- b1, \+ fb1.
% 2 person: not fb < 2 b
b2:- reached(1),reached(2).
b2:- reached(1),reached(3).
b2:- reached(1),reached(4).
b2:- reached(1),reached(5).
b2:- reached(2),reached(3).
b2:- reached(2),reached(4).
b2:- reached(2),reached(5).
b2:- reached(3),reached(4).
b2:- reached(3),reached(5).
b2:- reached(4),reached(5).


:- b2, \+ fb2.
% 3 person: not fb < 3 b
b3:- reached(1),reached(2),reached(3).
b3:- reached(1),reached(2),reached(4).
b3:- reached(1),reached(2),reached(5).
b3:- reached(1),reached(3),reached(4).
b3:- reached(1),reached(3),reached(5).
b3:- reached(1),reached(4),reached(5).
b3:- reached(2),reached(3),reached(4).
b3:- reached(2),reached(3),reached(5).
b3:- reached(2),reached(4),reached(5).
b3:- reached(3),reached(4),reached(5).


:- b3, \+ fb3.
% 4 person: not fb < 3 b
b4:- reached(1),reached(2),reached(3),reached(4).
b4:- reached(1),reached(2),reached(3),reached(5).
b4:- reached(1),reached(2),reached(4),reached(5).
b4:- reached(1),reached(3),reached(4),reached(5).
b4:- reached(2),reached(3),reached(4),reached(5).


:- b4, \+ fb3.
% 5 person: not fb < 4 b
b5:- reached(1),reached(2),reached(3),reached(4),reached(5).


:- b5, \+ fb4.
fb1:- buy(1).
fb1:- buy(2).
fb1:- buy(3).
fb1:- buy(4).
fb1:- buy(5).
fb2:- buy(1),buy(2).
fb2:- buy(1),buy(3).
fb2:- buy(1),buy(4).
fb2:- buy(1),buy(5).
fb2:- buy(2),buy(3).
fb2:- buy(2),buy(4).
fb2:- buy(2),buy(5).
fb2:- buy(3),buy(4).
fb2:- buy(3),buy(5).
fb2:- buy(4),buy(5).
fb3:- buy(1),buy(2),buy(3).
fb3:- buy(1),buy(2),buy(4).
fb3:- buy(1),buy(2),buy(5).
fb3:- buy(1),buy(3),buy(4).
fb3:- buy(1),buy(3),buy(5).
fb3:- buy(1),buy(4),buy(5).
fb3:- buy(2),buy(3),buy(4).
fb3:- buy(2),buy(3),buy(5).
fb3:- buy(2),buy(4),buy(5).
fb3:- buy(3),buy(4),buy(5).
fb4:- buy(1),buy(2),buy(3),buy(4).
fb4:- buy(1),buy(2),buy(3),buy(5).
fb4:- buy(1),buy(2),buy(4),buy(5).
fb4:- buy(1),buy(3),buy(4),buy(5).
fb4:- buy(2),buy(3),buy(4),buy(5).