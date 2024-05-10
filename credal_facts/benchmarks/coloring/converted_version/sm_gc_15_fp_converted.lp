
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
node(14).
node(15).

qr:- blue(1).
qr:- blue(3).
qr:- blue(5).
qr:- blue(7).
qr:- blue(9).
qr:- blue(11).
qr:- blue(13).
qr:- blue(15).

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
0.45::aedge(3,9) ; 0.45::bedge(3,9) ; 0.1::cedge(3,9).
edge(3,9) :- aedge(3,9).
n_edge(3,9) :- bedge(3,9).
edge(3,9) :- cedge(3,9), \+ n_edge(3,9).
n_edge(3,9) :- cedge(3,9), \+ edge(3,9).
0.45::aedge(5,14) ; 0.45::bedge(5,14) ; 0.1::cedge(5,14).
edge(5,14) :- aedge(5,14).
n_edge(5,14) :- bedge(5,14).
edge(5,14) :- cedge(5,14), \+ n_edge(5,14).
n_edge(5,14) :- cedge(5,14), \+ edge(5,14).
0.45::aedge(6,12) ; 0.45::bedge(6,12) ; 0.1::cedge(6,12).
edge(6,12) :- aedge(6,12).
n_edge(6,12) :- bedge(6,12).
edge(6,12) :- cedge(6,12), \+ n_edge(6,12).
n_edge(6,12) :- cedge(6,12), \+ edge(6,12).
0.45::aedge(11,13) ; 0.45::bedge(11,13) ; 0.1::cedge(11,13).
edge(11,13) :- aedge(11,13).
n_edge(11,13) :- bedge(11,13).
edge(11,13) :- cedge(11,13), \+ n_edge(11,13).
n_edge(11,13) :- cedge(11,13), \+ edge(11,13).
0.45::aedge(7,14) ; 0.45::bedge(7,14) ; 0.1::cedge(7,14).
edge(7,14) :- aedge(7,14).
n_edge(7,14) :- bedge(7,14).
edge(7,14) :- cedge(7,14), \+ n_edge(7,14).
n_edge(7,14) :- cedge(7,14), \+ edge(7,14).
0.45::aedge(5,9) ; 0.45::bedge(5,9) ; 0.1::cedge(5,9).
edge(5,9) :- aedge(5,9).
n_edge(5,9) :- bedge(5,9).
edge(5,9) :- cedge(5,9), \+ n_edge(5,9).
n_edge(5,9) :- cedge(5,9), \+ edge(5,9).
0.45::aedge(4,13) ; 0.45::bedge(4,13) ; 0.1::cedge(4,13).
edge(4,13) :- aedge(4,13).
n_edge(4,13) :- bedge(4,13).
edge(4,13) :- cedge(4,13), \+ n_edge(4,13).
n_edge(4,13) :- cedge(4,13), \+ edge(4,13).
0.45::aedge(3,15) ; 0.45::bedge(3,15) ; 0.1::cedge(3,15).
edge(3,15) :- aedge(3,15).
n_edge(3,15) :- bedge(3,15).
edge(3,15) :- cedge(3,15), \+ n_edge(3,15).
n_edge(3,15) :- cedge(3,15), \+ edge(3,15).
0.45::aedge(7,9) ; 0.45::bedge(7,9) ; 0.1::cedge(7,9).
edge(7,9) :- aedge(7,9).
n_edge(7,9) :- bedge(7,9).
edge(7,9) :- cedge(7,9), \+ n_edge(7,9).
n_edge(7,9) :- cedge(7,9), \+ edge(7,9).
0.45::aedge(14,15) ; 0.45::bedge(14,15) ; 0.1::cedge(14,15).
edge(14,15) :- aedge(14,15).
n_edge(14,15) :- bedge(14,15).
edge(14,15) :- cedge(14,15), \+ n_edge(14,15).
n_edge(14,15) :- cedge(14,15), \+ edge(14,15).
