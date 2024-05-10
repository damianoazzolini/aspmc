
red(X) :- node(X), not green(X), not blue(X).
green(X) :- node(X), not red(X), not blue(X).
blue(X) :- node(X), not red(X), not green(X).

e(X,Y) :- edge(X,Y).
e(Y,X) :- edge(Y,X).

:- e(X,Y), red(X), red(Y), k0(X), k0(Y).
:- e(X,Y), green(X), green(Y), k0(X), k0(Y).
:- e(X,Y), blue(X), blue(Y), k0(X), k0(Y).

0.6::c0(X):- node(X).
0.3::c1(X):- node(X).

k0(X):- node(X), c0(X).
k1(X):- node(X), not c0(X), c1(X).
k2(X):- node(X), not c0(X), not c1(X).

0.05::edge(1,2).
0.05::edge(1,3).
0.05::edge(2,5).
0.05::edge(2,6).
0.05::edge(3,4).
0.05::edge(4,5).
0.05::edge(5,6).
0.05::edge(3,7).
0.05::edge(1,4).

qr:- blue(1).
qr:- blue(3).
qr:- blue(5).
qr:- blue(7).

red(1).
green(4).
green(6).

node(1).
node(2).
node(3).
node(4).
node(5).
node(6).
node(7).

#query(qr).


