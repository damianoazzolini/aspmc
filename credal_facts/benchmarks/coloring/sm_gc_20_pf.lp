
red(X) :- node(X), \+ green(X), \+ blue(X).
green(X) :- node(X), \+ red(X), \+ blue(X).
blue(X) :- node(X), \+ red(X), \+ green(X).

e(X,Y) :- edge(X,Y).
e(Y,X) :- edge(Y,X).

:- e(X,Y), red(X), red(Y).
:- e(X,Y), green(X), green(Y).
:- e(X,Y), blue(X), blue(Y).

0.6::edge(1,2).
0.1::edge(1,3).
0.4::edge(2,5).
0.3::edge(2,6).
0.3::edge(3,4).
0.8::edge(4,5).
0.2::edge(5,6).
0.3::edge(9,18).
0.3::edge(12,13).
0.3::edge(17,18).
0.3::edge(8,12).
0.3::edge(4,13).
0.3::edge(4,16).
0.3::edge(8,18).
0.3::edge(4,15).
0.3::edge(12,14).
0.3::edge(6,20).
0.3::edge(6,12).
0.3::edge(13,16).
0.3::edge(15,20).
0.3::edge(2,10).
0.3::edge(11,12).

qr:- blue(1).
qr:- blue(3).
qr:- blue(5).
qr:- blue(7).
qr:- blue(9).
qr:- blue(11).
qr:- blue(13).
qr:- blue(15).
qr:- blue(17).
qr:- blue(19).

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
node(17).
node(18).
node(19).
node(20).

