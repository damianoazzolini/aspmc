
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
0.45::aedge(8,9) ; 0.44999999999999996::bedge(8,9) ; 0.10000000000000003::cedge(8,9).
edge(8,9) :- aedge(8,9).
n_edge(8,9) :- bedge(8,9).
edge(8,9) :- cedge(8,9), \+ n_edge(8,9).
n_edge(8,9) :- cedge(8,9), \+ edge(8,9).
0.45::aedge(2,14) ; 0.44999999999999996::bedge(2,14) ; 0.10000000000000003::cedge(2,14).
edge(2,14) :- aedge(2,14).
n_edge(2,14) :- bedge(2,14).
edge(2,14) :- cedge(2,14), \+ n_edge(2,14).
n_edge(2,14) :- cedge(2,14), \+ edge(2,14).
0.45::aedge(6,12) ; 0.44999999999999996::bedge(6,12) ; 0.10000000000000003::cedge(6,12).
edge(6,12) :- aedge(6,12).
n_edge(6,12) :- bedge(6,12).
edge(6,12) :- cedge(6,12), \+ n_edge(6,12).
n_edge(6,12) :- cedge(6,12), \+ edge(6,12).
0.45::aedge(2,9) ; 0.44999999999999996::bedge(2,9) ; 0.10000000000000003::cedge(2,9).
edge(2,9) :- aedge(2,9).
n_edge(2,9) :- bedge(2,9).
edge(2,9) :- cedge(2,9), \+ n_edge(2,9).
n_edge(2,9) :- cedge(2,9), \+ edge(2,9).
0.45::aedge(5,15) ; 0.44999999999999996::bedge(5,15) ; 0.10000000000000003::cedge(5,15).
edge(5,15) :- aedge(5,15).
n_edge(5,15) :- bedge(5,15).
edge(5,15) :- cedge(5,15), \+ n_edge(5,15).
n_edge(5,15) :- cedge(5,15), \+ edge(5,15).
0.45::aedge(2,17) ; 0.44999999999999996::bedge(2,17) ; 0.10000000000000003::cedge(2,17).
edge(2,17) :- aedge(2,17).
n_edge(2,17) :- bedge(2,17).
edge(2,17) :- cedge(2,17), \+ n_edge(2,17).
n_edge(2,17) :- cedge(2,17), \+ edge(2,17).
0.45::aedge(5,10) ; 0.44999999999999996::bedge(5,10) ; 0.10000000000000003::cedge(5,10).
edge(5,10) :- aedge(5,10).
n_edge(5,10) :- bedge(5,10).
edge(5,10) :- cedge(5,10), \+ n_edge(5,10).
n_edge(5,10) :- cedge(5,10), \+ edge(5,10).
0.45::aedge(11,12) ; 0.44999999999999996::bedge(11,12) ; 0.10000000000000003::cedge(11,12).
edge(11,12) :- aedge(11,12).
n_edge(11,12) :- bedge(11,12).
edge(11,12) :- cedge(11,12), \+ n_edge(11,12).
n_edge(11,12) :- cedge(11,12), \+ edge(11,12).
0.45::aedge(6,8) ; 0.44999999999999996::bedge(6,8) ; 0.10000000000000003::cedge(6,8).
edge(6,8) :- aedge(6,8).
n_edge(6,8) :- bedge(6,8).
edge(6,8) :- cedge(6,8), \+ n_edge(6,8).
n_edge(6,8) :- cedge(6,8), \+ edge(6,8).
0.45::aedge(1,8) ; 0.44999999999999996::bedge(1,8) ; 0.10000000000000003::cedge(1,8).
edge(1,8) :- aedge(1,8).
n_edge(1,8) :- bedge(1,8).
edge(1,8) :- cedge(1,8), \+ n_edge(1,8).
n_edge(1,8) :- cedge(1,8), \+ edge(1,8).
0.45::aedge(7,13) ; 0.44999999999999996::bedge(7,13) ; 0.10000000000000003::cedge(7,13).
edge(7,13) :- aedge(7,13).
n_edge(7,13) :- bedge(7,13).
edge(7,13) :- cedge(7,13), \+ n_edge(7,13).
n_edge(7,13) :- cedge(7,13), \+ edge(7,13).
0.45::aedge(3,10) ; 0.44999999999999996::bedge(3,10) ; 0.10000000000000003::cedge(3,10).
edge(3,10) :- aedge(3,10).
n_edge(3,10) :- bedge(3,10).
edge(3,10) :- cedge(3,10), \+ n_edge(3,10).
n_edge(3,10) :- cedge(3,10), \+ edge(3,10).
