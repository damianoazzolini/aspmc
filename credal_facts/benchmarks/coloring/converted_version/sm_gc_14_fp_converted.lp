
red(X) :- node(X), \+ green(X), \+ blue(X).
green(X) :- node(X), \+ red(X), \+ blue(X).
blue(X) :- node(X), \+ red(X), \+ green(X).

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
node(12).
node(13).


qr:- blue(1).
qr:- blue(3).
qr:- blue(5).
qr:- blue(7).
qr:- blue(9).
qr:- blue(11).
qr:- blue(13).

query(qr).


0.45::aedge(1,2) ; 0.45::bedge(1,2) ; 0.1::cedge(1,2).
edge(1,2) :- aedge(1,2).
n_edge(1,2) :- bedge(1,2).
edge(1,2) :- cedge(1,2), \+ n_edge(1,2).
n_edge(1,2) :- cedge(1,2), \+ edge(1,2).
0.45::aedge(1,3) ; 0.45::bedge(1,3) ; 0.1::cedge(1,3).
edge(1,3) :- aedge(1,3).
n_edge(1,3) :- bedge(1,3).
edge(1,3) :- cedge(1,3), \+ n_edge(1,3).
n_edge(1,3) :- cedge(1,3), \+ edge(1,3).
0.45::aedge(2,5) ; 0.45::bedge(2,5) ; 0.1::cedge(2,5).
edge(2,5) :- aedge(2,5).
n_edge(2,5) :- bedge(2,5).
edge(2,5) :- cedge(2,5), \+ n_edge(2,5).
n_edge(2,5) :- cedge(2,5), \+ edge(2,5).
0.45::aedge(2,6) ; 0.45::bedge(2,6) ; 0.1::cedge(2,6).
edge(2,6) :- aedge(2,6).
n_edge(2,6) :- bedge(2,6).
edge(2,6) :- cedge(2,6), \+ n_edge(2,6).
n_edge(2,6) :- cedge(2,6), \+ edge(2,6).
0.45::aedge(3,4) ; 0.45::bedge(3,4) ; 0.1::cedge(3,4).
edge(3,4) :- aedge(3,4).
n_edge(3,4) :- bedge(3,4).
edge(3,4) :- cedge(3,4), \+ n_edge(3,4).
n_edge(3,4) :- cedge(3,4), \+ edge(3,4).
0.45::aedge(4,5) ; 0.45::bedge(4,5) ; 0.1::cedge(4,5).
edge(4,5) :- aedge(4,5).
n_edge(4,5) :- bedge(4,5).
edge(4,5) :- cedge(4,5), \+ n_edge(4,5).
n_edge(4,5) :- cedge(4,5), \+ edge(4,5).
0.45::aedge(5,6) ; 0.45::bedge(5,6) ; 0.1::cedge(5,6).
edge(5,6) :- aedge(5,6).
n_edge(5,6) :- bedge(5,6).
edge(5,6) :- cedge(5,6), \+ n_edge(5,6).
n_edge(5,6) :- cedge(5,6), \+ edge(5,6).
0.45::aedge(1,13) ; 0.45::bedge(1,13) ; 0.1::cedge(1,13).
edge(1,13) :- aedge(1,13).
n_edge(1,13) :- bedge(1,13).
edge(1,13) :- cedge(1,13), \+ n_edge(1,13).
n_edge(1,13) :- cedge(1,13), \+ edge(1,13).
0.45::aedge(5,10) ; 0.45::bedge(5,10) ; 0.1::cedge(5,10).
edge(5,10) :- aedge(5,10).
n_edge(5,10) :- bedge(5,10).
edge(5,10) :- cedge(5,10), \+ n_edge(5,10).
n_edge(5,10) :- cedge(5,10), \+ edge(5,10).
0.45::aedge(9,10) ; 0.45::bedge(9,10) ; 0.1::cedge(9,10).
edge(9,10) :- aedge(9,10).
n_edge(9,10) :- bedge(9,10).
edge(9,10) :- cedge(9,10), \+ n_edge(9,10).
n_edge(9,10) :- cedge(9,10), \+ edge(9,10).
0.45::aedge(7,13) ; 0.45::bedge(7,13) ; 0.1::cedge(7,13).
edge(7,13) :- aedge(7,13).
n_edge(7,13) :- bedge(7,13).
edge(7,13) :- cedge(7,13), \+ n_edge(7,13).
n_edge(7,13) :- cedge(7,13), \+ edge(7,13).
0.45::aedge(10,11) ; 0.45::bedge(10,11) ; 0.1::cedge(10,11).
edge(10,11) :- aedge(10,11).
n_edge(10,11) :- bedge(10,11).
edge(10,11) :- cedge(10,11), \+ n_edge(10,11).
n_edge(10,11) :- cedge(10,11), \+ edge(10,11).
0.45::aedge(3,7) ; 0.45::bedge(3,7) ; 0.1::cedge(3,7).
edge(3,7) :- aedge(3,7).
n_edge(3,7) :- bedge(3,7).
edge(3,7) :- cedge(3,7), \+ n_edge(3,7).
n_edge(3,7) :- cedge(3,7), \+ edge(3,7).
0.45::aedge(1,10) ; 0.45::bedge(1,10) ; 0.1::cedge(1,10).
edge(1,10) :- aedge(1,10).
n_edge(1,10) :- bedge(1,10).
edge(1,10) :- cedge(1,10), \+ n_edge(1,10).
n_edge(1,10) :- cedge(1,10), \+ edge(1,10).
0.45::aedge(5,8) ; 0.45::bedge(5,8) ; 0.1::cedge(5,8).
edge(5,8) :- aedge(5,8).
n_edge(5,8) :- bedge(5,8).
edge(5,8) :- cedge(5,8), \+ n_edge(5,8).
n_edge(5,8) :- cedge(5,8), \+ edge(5,8).
0.45::aedge(6,7) ; 0.45::bedge(6,7) ; 0.1::cedge(6,7).
edge(6,7) :- aedge(6,7).
n_edge(6,7) :- bedge(6,7).
edge(6,7) :- cedge(6,7), \+ n_edge(6,7).
n_edge(6,7) :- cedge(6,7), \+ edge(6,7).
