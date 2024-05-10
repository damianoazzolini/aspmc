
red(X) :- node(X), not green(X), not blue(X).
green(X) :- node(X), not red(X), not blue(X).
blue(X) :- node(X), not red(X), not green(X).

e(X,Y) :- edge(X,Y).
e(Y,X) :- edge(Y,X).

:- e(X,Y), red(X), red(Y).
:- e(X,Y), green(X), green(Y).
:- e(X,Y), blue(X), blue(Y).

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

qr:- blue(1).
qr:- blue(3).
qr:- blue(5).
qr:- blue(7).
qr:- blue(9).
qr:- blue(11).

#query(qr).


0.45::aedge(1,2) ; 0.45::bedge(1,2) ; 0.1::cedge(1,2).
edge(1,2) :- aedge(1,2).
n_edge(1,2) :- bedge(1,2).
edge(1,2) :- cedge(1,2), not n_edge(1,2).
n_edge(1,2) :- cedge(1,2), not edge(1,2).
0.45::aedge(1,3) ; 0.45::bedge(1,3) ; 0.1::cedge(1,3).
edge(1,3) :- aedge(1,3).
n_edge(1,3) :- bedge(1,3).
edge(1,3) :- cedge(1,3), not n_edge(1,3).
n_edge(1,3) :- cedge(1,3), not edge(1,3).
0.45::aedge(2,5) ; 0.45::bedge(2,5) ; 0.1::cedge(2,5).
edge(2,5) :- aedge(2,5).
n_edge(2,5) :- bedge(2,5).
edge(2,5) :- cedge(2,5), not n_edge(2,5).
n_edge(2,5) :- cedge(2,5), not edge(2,5).
0.45::aedge(2,6) ; 0.45::bedge(2,6) ; 0.1::cedge(2,6).
edge(2,6) :- aedge(2,6).
n_edge(2,6) :- bedge(2,6).
edge(2,6) :- cedge(2,6), not n_edge(2,6).
n_edge(2,6) :- cedge(2,6), not edge(2,6).
0.45::aedge(3,4) ; 0.45::bedge(3,4) ; 0.1::cedge(3,4).
edge(3,4) :- aedge(3,4).
n_edge(3,4) :- bedge(3,4).
edge(3,4) :- cedge(3,4), not n_edge(3,4).
n_edge(3,4) :- cedge(3,4), not edge(3,4).
0.45::aedge(4,5) ; 0.45::bedge(4,5) ; 0.1::cedge(4,5).
edge(4,5) :- aedge(4,5).
n_edge(4,5) :- bedge(4,5).
edge(4,5) :- cedge(4,5), not n_edge(4,5).
n_edge(4,5) :- cedge(4,5), not edge(4,5).
0.45::aedge(5,6) ; 0.45::bedge(5,6) ; 0.1::cedge(5,6).
edge(5,6) :- aedge(5,6).
n_edge(5,6) :- bedge(5,6).
edge(5,6) :- cedge(5,6), not n_edge(5,6).
n_edge(5,6) :- cedge(5,6), not edge(5,6).
0.45::aedge(3,10) ; 0.45::bedge(3,10) ; 0.1::cedge(3,10).
edge(3,10) :- aedge(3,10).
n_edge(3,10) :- bedge(3,10).
edge(3,10) :- cedge(3,10), not n_edge(3,10).
n_edge(3,10) :- cedge(3,10), not edge(3,10).
0.45::aedge(6,11) ; 0.45::bedge(6,11) ; 0.1::cedge(6,11).
edge(6,11) :- aedge(6,11).
n_edge(6,11) :- bedge(6,11).
edge(6,11) :- cedge(6,11), not n_edge(6,11).
n_edge(6,11) :- cedge(6,11), not edge(6,11).
0.45::aedge(2,11) ; 0.45::bedge(2,11) ; 0.1::cedge(2,11).
edge(2,11) :- aedge(2,11).
n_edge(2,11) :- bedge(2,11).
edge(2,11) :- cedge(2,11), not n_edge(2,11).
n_edge(2,11) :- cedge(2,11), not edge(2,11).
0.45::aedge(6,10) ; 0.45::bedge(6,10) ; 0.1::cedge(6,10).
edge(6,10) :- aedge(6,10).
n_edge(6,10) :- bedge(6,10).
edge(6,10) :- cedge(6,10), not n_edge(6,10).
n_edge(6,10) :- cedge(6,10), not edge(6,10).
0.45::aedge(2,8) ; 0.45::bedge(2,8) ; 0.1::cedge(2,8).
edge(2,8) :- aedge(2,8).
n_edge(2,8) :- bedge(2,8).
edge(2,8) :- cedge(2,8), not n_edge(2,8).
n_edge(2,8) :- cedge(2,8), not edge(2,8).
0.45::aedge(1,8) ; 0.45::bedge(1,8) ; 0.1::cedge(1,8).
edge(1,8) :- aedge(1,8).
n_edge(1,8) :- bedge(1,8).
edge(1,8) :- cedge(1,8), not n_edge(1,8).
n_edge(1,8) :- cedge(1,8), not edge(1,8).
