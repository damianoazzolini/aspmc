% red(X) :- node(X), \+ green(X), \+ blue(X).
% green(X) :- node(X), \+ red(X), \+ blue(X).
% blue(X) :- node(X), \+ red(X), \+ green(X).

% e(X,Y) :- edge(X,Y).
% e(Y,X) :- edge(Y,X).

% node(1).
% node(2).
% node(3).
% node(4).
% node(5).
% node(6).

% :- e(X,Y), red(X), red(Y).
% :- e(X,Y), green(X), green(Y).
% :- e(X,Y), blue(X), blue(Y).

% red(1).
% green(4).
% green(6).

% 0.6::edge(1, 2).
% 0.1::edge(1, 3).
% 0.4::edge(2, 5).
% 0.3::edge(2, 6).
% 0.3::edge(3, 4).
% 0.8::edge(4, 5).
% 0.2::edge(5, 6).

% qr:- blue(3).

% query(blue(3)).

% % 0.3::edge(1,4).

% node(1..6).

0.4::a(0). 
0.4::a(1).
0.4::a(2). 
0.4::a(3).
qr:- \+ a(0).
qr :- \+ a(1), \+ nqr.
nqr :- \+ a(1), \+ qr.
qr:- a(2).
qr :- a(3), \+ nqr.
nqr :- a(3), \+ qr.

query(qr).