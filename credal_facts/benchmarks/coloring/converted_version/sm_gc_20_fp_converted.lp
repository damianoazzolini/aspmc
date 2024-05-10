
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
0.45::aedge(9,18) ; 0.44999999999999996::bedge(9,18) ; 0.10000000000000003::cedge(9,18).
edge(9,18) :- aedge(9,18).
n_edge(9,18) :- bedge(9,18).
edge(9,18) :- cedge(9,18), \+ n_edge(9,18).
n_edge(9,18) :- cedge(9,18), \+ edge(9,18).
0.45::aedge(12,13) ; 0.44999999999999996::bedge(12,13) ; 0.10000000000000003::cedge(12,13).
edge(12,13) :- aedge(12,13).
n_edge(12,13) :- bedge(12,13).
edge(12,13) :- cedge(12,13), \+ n_edge(12,13).
n_edge(12,13) :- cedge(12,13), \+ edge(12,13).
0.45::aedge(17,18) ; 0.44999999999999996::bedge(17,18) ; 0.10000000000000003::cedge(17,18).
edge(17,18) :- aedge(17,18).
n_edge(17,18) :- bedge(17,18).
edge(17,18) :- cedge(17,18), \+ n_edge(17,18).
n_edge(17,18) :- cedge(17,18), \+ edge(17,18).
0.45::aedge(8,12) ; 0.44999999999999996::bedge(8,12) ; 0.10000000000000003::cedge(8,12).
edge(8,12) :- aedge(8,12).
n_edge(8,12) :- bedge(8,12).
edge(8,12) :- cedge(8,12), \+ n_edge(8,12).
n_edge(8,12) :- cedge(8,12), \+ edge(8,12).
0.45::aedge(4,13) ; 0.44999999999999996::bedge(4,13) ; 0.10000000000000003::cedge(4,13).
edge(4,13) :- aedge(4,13).
n_edge(4,13) :- bedge(4,13).
edge(4,13) :- cedge(4,13), \+ n_edge(4,13).
n_edge(4,13) :- cedge(4,13), \+ edge(4,13).
0.45::aedge(4,16) ; 0.44999999999999996::bedge(4,16) ; 0.10000000000000003::cedge(4,16).
edge(4,16) :- aedge(4,16).
n_edge(4,16) :- bedge(4,16).
edge(4,16) :- cedge(4,16), \+ n_edge(4,16).
n_edge(4,16) :- cedge(4,16), \+ edge(4,16).
0.45::aedge(8,18) ; 0.44999999999999996::bedge(8,18) ; 0.10000000000000003::cedge(8,18).
edge(8,18) :- aedge(8,18).
n_edge(8,18) :- bedge(8,18).
edge(8,18) :- cedge(8,18), \+ n_edge(8,18).
n_edge(8,18) :- cedge(8,18), \+ edge(8,18).
0.45::aedge(4,15) ; 0.44999999999999996::bedge(4,15) ; 0.10000000000000003::cedge(4,15).
edge(4,15) :- aedge(4,15).
n_edge(4,15) :- bedge(4,15).
edge(4,15) :- cedge(4,15), \+ n_edge(4,15).
n_edge(4,15) :- cedge(4,15), \+ edge(4,15).
0.45::aedge(12,14) ; 0.44999999999999996::bedge(12,14) ; 0.10000000000000003::cedge(12,14).
edge(12,14) :- aedge(12,14).
n_edge(12,14) :- bedge(12,14).
edge(12,14) :- cedge(12,14), \+ n_edge(12,14).
n_edge(12,14) :- cedge(12,14), \+ edge(12,14).
0.45::aedge(6,20) ; 0.44999999999999996::bedge(6,20) ; 0.10000000000000003::cedge(6,20).
edge(6,20) :- aedge(6,20).
n_edge(6,20) :- bedge(6,20).
edge(6,20) :- cedge(6,20), \+ n_edge(6,20).
n_edge(6,20) :- cedge(6,20), \+ edge(6,20).
0.45::aedge(6,12) ; 0.44999999999999996::bedge(6,12) ; 0.10000000000000003::cedge(6,12).
edge(6,12) :- aedge(6,12).
n_edge(6,12) :- bedge(6,12).
edge(6,12) :- cedge(6,12), \+ n_edge(6,12).
n_edge(6,12) :- cedge(6,12), \+ edge(6,12).
0.45::aedge(13,16) ; 0.44999999999999996::bedge(13,16) ; 0.10000000000000003::cedge(13,16).
edge(13,16) :- aedge(13,16).
n_edge(13,16) :- bedge(13,16).
edge(13,16) :- cedge(13,16), \+ n_edge(13,16).
n_edge(13,16) :- cedge(13,16), \+ edge(13,16).
0.45::aedge(15,20) ; 0.44999999999999996::bedge(15,20) ; 0.10000000000000003::cedge(15,20).
edge(15,20) :- aedge(15,20).
n_edge(15,20) :- bedge(15,20).
edge(15,20) :- cedge(15,20), \+ n_edge(15,20).
n_edge(15,20) :- cedge(15,20), \+ edge(15,20).
0.45::aedge(2,10) ; 0.44999999999999996::bedge(2,10) ; 0.10000000000000003::cedge(2,10).
edge(2,10) :- aedge(2,10).
n_edge(2,10) :- bedge(2,10).
edge(2,10) :- cedge(2,10), \+ n_edge(2,10).
n_edge(2,10) :- cedge(2,10), \+ edge(2,10).
0.45::aedge(11,12) ; 0.44999999999999996::bedge(11,12) ; 0.10000000000000003::cedge(11,12).
edge(11,12) :- aedge(11,12).
n_edge(11,12) :- bedge(11,12).
edge(11,12) :- cedge(11,12), \+ n_edge(11,12).
n_edge(11,12) :- cedge(11,12), \+ edge(11,12).
