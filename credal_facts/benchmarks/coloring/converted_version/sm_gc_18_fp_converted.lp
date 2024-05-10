
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

0.45::aedge(1,2) ; 0.44999999999999996::bedge(1,2) ; 0.10000000000000003::cedge(1,2).
edge(1,2) :- aedge(1,2).
n_edge(1,2) :- bedge(1,2).
edge(1,2) :- cedge(1,2), \+ n_edge(1,2).
n_edge(1,2) :- cedge(1,2), \+ edge(1,2).
0.45::aedge(1,3) ; 0.44999999999999996::bedge(1,3) ; 0.10000000000000003::cedge(1,3).
edge(1,3) :- aedge(1,3).
n_edge(1,3) :- bedge(1,3).
edge(1,3) :- cedge(1,3), \+ n_edge(1,3).
n_edge(1,3) :- cedge(1,3), \+ edge(1,3).
0.45::aedge(2,5) ; 0.44999999999999996::bedge(2,5) ; 0.10000000000000003::cedge(2,5).
edge(2,5) :- aedge(2,5).
n_edge(2,5) :- bedge(2,5).
edge(2,5) :- cedge(2,5), \+ n_edge(2,5).
n_edge(2,5) :- cedge(2,5), \+ edge(2,5).
0.45::aedge(2,6) ; 0.44999999999999996::bedge(2,6) ; 0.10000000000000003::cedge(2,6).
edge(2,6) :- aedge(2,6).
n_edge(2,6) :- bedge(2,6).
edge(2,6) :- cedge(2,6), \+ n_edge(2,6).
n_edge(2,6) :- cedge(2,6), \+ edge(2,6).
0.45::aedge(3,4) ; 0.44999999999999996::bedge(3,4) ; 0.10000000000000003::cedge(3,4).
edge(3,4) :- aedge(3,4).
n_edge(3,4) :- bedge(3,4).
edge(3,4) :- cedge(3,4), \+ n_edge(3,4).
n_edge(3,4) :- cedge(3,4), \+ edge(3,4).
0.45::aedge(4,5) ; 0.44999999999999996::bedge(4,5) ; 0.10000000000000003::cedge(4,5).
edge(4,5) :- aedge(4,5).
n_edge(4,5) :- bedge(4,5).
edge(4,5) :- cedge(4,5), \+ n_edge(4,5).
n_edge(4,5) :- cedge(4,5), \+ edge(4,5).
0.45::aedge(5,6) ; 0.44999999999999996::bedge(5,6) ; 0.10000000000000003::cedge(5,6).
edge(5,6) :- aedge(5,6).
n_edge(5,6) :- bedge(5,6).
edge(5,6) :- cedge(5,6), \+ n_edge(5,6).
n_edge(5,6) :- cedge(5,6), \+ edge(5,6).
0.45::aedge(2,12) ; 0.44999999999999996::bedge(2,12) ; 0.10000000000000003::cedge(2,12).
edge(2,12) :- aedge(2,12).
n_edge(2,12) :- bedge(2,12).
edge(2,12) :- cedge(2,12), \+ n_edge(2,12).
n_edge(2,12) :- cedge(2,12), \+ edge(2,12).
0.45::aedge(8,10) ; 0.44999999999999996::bedge(8,10) ; 0.10000000000000003::cedge(8,10).
edge(8,10) :- aedge(8,10).
n_edge(8,10) :- bedge(8,10).
edge(8,10) :- cedge(8,10), \+ n_edge(8,10).
n_edge(8,10) :- cedge(8,10), \+ edge(8,10).
0.45::aedge(14,16) ; 0.44999999999999996::bedge(14,16) ; 0.10000000000000003::cedge(14,16).
edge(14,16) :- aedge(14,16).
n_edge(14,16) :- bedge(14,16).
edge(14,16) :- cedge(14,16), \+ n_edge(14,16).
n_edge(14,16) :- cedge(14,16), \+ edge(14,16).
0.45::aedge(3,13) ; 0.44999999999999996::bedge(3,13) ; 0.10000000000000003::cedge(3,13).
edge(3,13) :- aedge(3,13).
n_edge(3,13) :- bedge(3,13).
edge(3,13) :- cedge(3,13), \+ n_edge(3,13).
n_edge(3,13) :- cedge(3,13), \+ edge(3,13).
0.45::aedge(6,9) ; 0.44999999999999996::bedge(6,9) ; 0.10000000000000003::cedge(6,9).
edge(6,9) :- aedge(6,9).
n_edge(6,9) :- bedge(6,9).
edge(6,9) :- cedge(6,9), \+ n_edge(6,9).
n_edge(6,9) :- cedge(6,9), \+ edge(6,9).
0.45::aedge(8,11) ; 0.44999999999999996::bedge(8,11) ; 0.10000000000000003::cedge(8,11).
edge(8,11) :- aedge(8,11).
n_edge(8,11) :- bedge(8,11).
edge(8,11) :- cedge(8,11), \+ n_edge(8,11).
n_edge(8,11) :- cedge(8,11), \+ edge(8,11).
0.45::aedge(10,18) ; 0.44999999999999996::bedge(10,18) ; 0.10000000000000003::cedge(10,18).
edge(10,18) :- aedge(10,18).
n_edge(10,18) :- bedge(10,18).
edge(10,18) :- cedge(10,18), \+ n_edge(10,18).
n_edge(10,18) :- cedge(10,18), \+ edge(10,18).
0.45::aedge(14,15) ; 0.44999999999999996::bedge(14,15) ; 0.10000000000000003::cedge(14,15).
edge(14,15) :- aedge(14,15).
n_edge(14,15) :- bedge(14,15).
edge(14,15) :- cedge(14,15), \+ n_edge(14,15).
n_edge(14,15) :- cedge(14,15), \+ edge(14,15).
0.45::aedge(8,17) ; 0.44999999999999996::bedge(8,17) ; 0.10000000000000003::cedge(8,17).
edge(8,17) :- aedge(8,17).
n_edge(8,17) :- bedge(8,17).
edge(8,17) :- cedge(8,17), \+ n_edge(8,17).
n_edge(8,17) :- cedge(8,17), \+ edge(8,17).
0.45::aedge(4,17) ; 0.44999999999999996::bedge(4,17) ; 0.10000000000000003::cedge(4,17).
edge(4,17) :- aedge(4,17).
n_edge(4,17) :- bedge(4,17).
edge(4,17) :- cedge(4,17), \+ n_edge(4,17).
n_edge(4,17) :- cedge(4,17), \+ edge(4,17).
0.45::aedge(5,13) ; 0.44999999999999996::bedge(5,13) ; 0.10000000000000003::cedge(5,13).
edge(5,13) :- aedge(5,13).
n_edge(5,13) :- bedge(5,13).
edge(5,13) :- cedge(5,13), \+ n_edge(5,13).
n_edge(5,13) :- cedge(5,13), \+ edge(5,13).
0.45::aedge(1,12) ; 0.44999999999999996::bedge(1,12) ; 0.10000000000000003::cedge(1,12).
edge(1,12) :- aedge(1,12).
n_edge(1,12) :- bedge(1,12).
edge(1,12) :- cedge(1,12), \+ n_edge(1,12).
n_edge(1,12) :- cedge(1,12), \+ edge(1,12).
0.45::aedge(1,15) ; 0.44999999999999996::bedge(1,15) ; 0.10000000000000003::cedge(1,15).
edge(1,15) :- aedge(1,15).
n_edge(1,15) :- bedge(1,15).
edge(1,15) :- cedge(1,15), \+ n_edge(1,15).
n_edge(1,15) :- cedge(1,15), \+ edge(1,15).
