red(X) :- node(X), \+ green(X), \+ blue(X).
green(X) :- node(X), \+ red(X), \+ blue(X).
blue(X) :- node(X), \+ red(X), \+ green(X).

e(X,Y) :- edge(X,Y).
e(Y,X) :- edge(Y,X).

node(1).
node(2).
node(3).
node(4).
node(5).
node(6).

:- e(X,Y), red(X), red(Y).
:- e(X,Y), green(X), green(Y).
:- e(X,Y), blue(X), blue(Y).

red(1).
green(4).
green(6).

0.6::edge(1, 2).
0.1::edge(1, 3).
0.4::edge(2, 5).
0.3::edge(2, 6).
0.3::edge(3, 4).
0.8::edge(4, 5).
0.2::edge(5, 6).

0.1::edge(6,7).
0.1::edge(7,8).
0.1::edge(7,9).
0.1::edge(9,8).
0.1::edge(10,8).
0.1::edge(11,8).
0.1::edge(12,8).
0.1::edge(13,8).
0.1::edge(14,8).

% 0.2::edge(1,2).
% 0.2::edge(1,3).
% 0.2::edge(1,4).
% 0.2::edge(2,3).
% 0.2::edge(2,4).
% 0.2::edge(3,4).

% path(X,Y):- edge(X,Z), path(Z,Y).
% path(X,Y):- edge(X,Y).

% query(path(1,4)).

query(blue(3)).