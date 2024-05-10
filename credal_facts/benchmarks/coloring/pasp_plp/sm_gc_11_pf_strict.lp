
red(X) :- node(X), not green(X), not blue(X).
green(X) :- node(X), not red(X), not blue(X).
blue(X) :- node(X), not red(X), not green(X).

e(X,Y) :- edge(X,Y).
e(Y,X) :- edge(Y,X).

:- e(X,Y), red(X), red(Y).
:- e(X,Y), green(X), green(Y).
:- e(X,Y), blue(X), blue(Y).

[0.45,0.55]::edge(1,2).
[0.45,0.55]::edge(1,3).
[0.45,0.55]::edge(2,5).
[0.45,0.55]::edge(2,6).
[0.45,0.55]::edge(3,4).
[0.45,0.55]::edge(4,5).
[0.45,0.55]::edge(5,6).
[0.45,0.55]::edge(3,10).
[0.45,0.55]::edge(6,11).
[0.45,0.55]::edge(2,11).
[0.45,0.55]::edge(6,10).
[0.45,0.55]::edge(2,8).
[0.45,0.55]::edge(1,8).

qr:- blue(1).
qr:- blue(3).
qr:- blue(5).
qr:- blue(7).
qr:- blue(9).
qr:- blue(11).

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
node(8).
node(9).
node(10).
node(11).

#query(qr).
