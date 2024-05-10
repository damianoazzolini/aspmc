
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
0.45::aedge(7,11) ; 0.44999999999999996::bedge(7,11) ; 0.10000000000000003::cedge(7,11).
edge(7,11) :- aedge(7,11).
n_edge(7,11) :- bedge(7,11).
edge(7,11) :- cedge(7,11), \+ n_edge(7,11).
n_edge(7,11) :- cedge(7,11), \+ edge(7,11).
0.45::aedge(12,14) ; 0.44999999999999996::bedge(12,14) ; 0.10000000000000003::cedge(12,14).
edge(12,14) :- aedge(12,14).
n_edge(12,14) :- bedge(12,14).
edge(12,14) :- cedge(12,14), \+ n_edge(12,14).
n_edge(12,14) :- cedge(12,14), \+ edge(12,14).
0.45::aedge(5,12) ; 0.44999999999999996::bedge(5,12) ; 0.10000000000000003::cedge(5,12).
edge(5,12) :- aedge(5,12).
n_edge(5,12) :- bedge(5,12).
edge(5,12) :- cedge(5,12), \+ n_edge(5,12).
n_edge(5,12) :- cedge(5,12), \+ edge(5,12).
0.45::aedge(4,6) ; 0.44999999999999996::bedge(4,6) ; 0.10000000000000003::cedge(4,6).
edge(4,6) :- aedge(4,6).
n_edge(4,6) :- bedge(4,6).
edge(4,6) :- cedge(4,6), \+ n_edge(4,6).
n_edge(4,6) :- cedge(4,6), \+ edge(4,6).
0.45::aedge(2,15) ; 0.44999999999999996::bedge(2,15) ; 0.10000000000000003::cedge(2,15).
edge(2,15) :- aedge(2,15).
n_edge(2,15) :- bedge(2,15).
edge(2,15) :- cedge(2,15), \+ n_edge(2,15).
n_edge(2,15) :- cedge(2,15), \+ edge(2,15).
0.45::aedge(11,16) ; 0.44999999999999996::bedge(11,16) ; 0.10000000000000003::cedge(11,16).
edge(11,16) :- aedge(11,16).
n_edge(11,16) :- bedge(11,16).
edge(11,16) :- cedge(11,16), \+ n_edge(11,16).
n_edge(11,16) :- cedge(11,16), \+ edge(11,16).
0.45::aedge(6,12) ; 0.44999999999999996::bedge(6,12) ; 0.10000000000000003::cedge(6,12).
edge(6,12) :- aedge(6,12).
n_edge(6,12) :- bedge(6,12).
edge(6,12) :- cedge(6,12), \+ n_edge(6,12).
n_edge(6,12) :- cedge(6,12), \+ edge(6,12).
0.45::aedge(7,12) ; 0.44999999999999996::bedge(7,12) ; 0.10000000000000003::cedge(7,12).
edge(7,12) :- aedge(7,12).
n_edge(7,12) :- bedge(7,12).
edge(7,12) :- cedge(7,12), \+ n_edge(7,12).
n_edge(7,12) :- cedge(7,12), \+ edge(7,12).
0.45::aedge(1,9) ; 0.44999999999999996::bedge(1,9) ; 0.10000000000000003::cedge(1,9).
edge(1,9) :- aedge(1,9).
n_edge(1,9) :- bedge(1,9).
edge(1,9) :- cedge(1,9), \+ n_edge(1,9).
n_edge(1,9) :- cedge(1,9), \+ edge(1,9).
0.45::aedge(9,10) ; 0.44999999999999996::bedge(9,10) ; 0.10000000000000003::cedge(9,10).
edge(9,10) :- aedge(9,10).
n_edge(9,10) :- bedge(9,10).
edge(9,10) :- cedge(9,10), \+ n_edge(9,10).
n_edge(9,10) :- cedge(9,10), \+ edge(9,10).
0.45::aedge(9,12) ; 0.44999999999999996::bedge(9,12) ; 0.10000000000000003::cedge(9,12).
edge(9,12) :- aedge(9,12).
n_edge(9,12) :- bedge(9,12).
edge(9,12) :- cedge(9,12), \+ n_edge(9,12).
n_edge(9,12) :- cedge(9,12), \+ edge(9,12).
