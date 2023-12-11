
red(X) :- node(X), not green(X), not blue(X).
green(X) :- node(X), not red(X), not blue(X).
blue(X) :- node(X), not red(X), not green(X).

e(X,Y) :- edge(X,Y).
e(Y,X) :- edge(Y,X).

:- e(X,Y), red(X), red(Y).
:- e(X,Y), green(X), green(Y).
:- e(X,Y), blue(X), blue(Y).

optimizable [0.05,0.95]::edge(1,2).
optimizable [0.05,0.95]::edge(1,3).
optimizable [0.05,0.95]::edge(2,5).
optimizable [0.05,0.95]::edge(2,6).
optimizable [0.05,0.95]::edge(3,4).
optimizable [0.05,0.95]::edge(4,5).
optimizable [0.05,0.95]::edge(5,6).
optimizable [0.05,0.95]::edge(7,11).
optimizable [0.05,0.95]::edge(12,14).
optimizable [0.05,0.95]::edge(5,12).
optimizable [0.05,0.95]::edge(4,6).
optimizable [0.05,0.95]::edge(2,15).
optimizable [0.05,0.95]::edge(11,16).
optimizable [0.05,0.95]::edge(6,12).
optimizable [0.05,0.95]::edge(7,12).
optimizable [0.05,0.95]::edge(1,9).
optimizable [0.05,0.95]::edge(9,10).
optimizable [0.05,0.95]::edge(9,12).

qr:- blue(1).
qr:- blue(3).
qr:- blue(5).
qr:- blue(7).
qr:- blue(9).
qr:- blue(11).
qr:- blue(13).
qr:- blue(15).

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
node(12).
node(13).
node(14).
node(15).
node(16).

