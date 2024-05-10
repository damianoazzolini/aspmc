
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
0.45::aedge(7,10) ; 0.44999999999999996::bedge(7,10) ; 0.10000000000000003::cedge(7,10).
edge(7,10) :- aedge(7,10).
n_edge(7,10) :- bedge(7,10).
edge(7,10) :- cedge(7,10), \+ n_edge(7,10).
n_edge(7,10) :- cedge(7,10), \+ edge(7,10).
0.45::aedge(5,10) ; 0.44999999999999996::bedge(5,10) ; 0.10000000000000003::cedge(5,10).
edge(5,10) :- aedge(5,10).
n_edge(5,10) :- bedge(5,10).
edge(5,10) :- cedge(5,10), \+ n_edge(5,10).
n_edge(5,10) :- cedge(5,10), \+ edge(5,10).
0.45::aedge(3,7) ; 0.44999999999999996::bedge(3,7) ; 0.10000000000000003::cedge(3,7).
edge(3,7) :- aedge(3,7).
n_edge(3,7) :- bedge(3,7).
edge(3,7) :- cedge(3,7), \+ n_edge(3,7).
n_edge(3,7) :- cedge(3,7), \+ edge(3,7).
0.45::aedge(13,18) ; 0.44999999999999996::bedge(13,18) ; 0.10000000000000003::cedge(13,18).
edge(13,18) :- aedge(13,18).
n_edge(13,18) :- bedge(13,18).
edge(13,18) :- cedge(13,18), \+ n_edge(13,18).
n_edge(13,18) :- cedge(13,18), \+ edge(13,18).
0.45::aedge(15,18) ; 0.44999999999999996::bedge(15,18) ; 0.10000000000000003::cedge(15,18).
edge(15,18) :- aedge(15,18).
n_edge(15,18) :- bedge(15,18).
edge(15,18) :- cedge(15,18), \+ n_edge(15,18).
n_edge(15,18) :- cedge(15,18), \+ edge(15,18).
0.45::aedge(14,16) ; 0.44999999999999996::bedge(14,16) ; 0.10000000000000003::cedge(14,16).
edge(14,16) :- aedge(14,16).
n_edge(14,16) :- bedge(14,16).
edge(14,16) :- cedge(14,16), \+ n_edge(14,16).
n_edge(14,16) :- cedge(14,16), \+ edge(14,16).
0.45::aedge(1,14) ; 0.44999999999999996::bedge(1,14) ; 0.10000000000000003::cedge(1,14).
edge(1,14) :- aedge(1,14).
n_edge(1,14) :- bedge(1,14).
edge(1,14) :- cedge(1,14), \+ n_edge(1,14).
n_edge(1,14) :- cedge(1,14), \+ edge(1,14).
0.45::aedge(3,17) ; 0.44999999999999996::bedge(3,17) ; 0.10000000000000003::cedge(3,17).
edge(3,17) :- aedge(3,17).
n_edge(3,17) :- bedge(3,17).
edge(3,17) :- cedge(3,17), \+ n_edge(3,17).
n_edge(3,17) :- cedge(3,17), \+ edge(3,17).
0.45::aedge(1,15) ; 0.44999999999999996::bedge(1,15) ; 0.10000000000000003::cedge(1,15).
edge(1,15) :- aedge(1,15).
n_edge(1,15) :- bedge(1,15).
edge(1,15) :- cedge(1,15), \+ n_edge(1,15).
n_edge(1,15) :- cedge(1,15), \+ edge(1,15).
0.45::aedge(13,16) ; 0.44999999999999996::bedge(13,16) ; 0.10000000000000003::cedge(13,16).
edge(13,16) :- aedge(13,16).
n_edge(13,16) :- bedge(13,16).
edge(13,16) :- cedge(13,16), \+ n_edge(13,16).
n_edge(13,16) :- cedge(13,16), \+ edge(13,16).
0.45::aedge(4,11) ; 0.44999999999999996::bedge(4,11) ; 0.10000000000000003::cedge(4,11).
edge(4,11) :- aedge(4,11).
n_edge(4,11) :- bedge(4,11).
edge(4,11) :- cedge(4,11), \+ n_edge(4,11).
n_edge(4,11) :- cedge(4,11), \+ edge(4,11).
0.45::aedge(8,17) ; 0.44999999999999996::bedge(8,17) ; 0.10000000000000003::cedge(8,17).
edge(8,17) :- aedge(8,17).
n_edge(8,17) :- bedge(8,17).
edge(8,17) :- cedge(8,17), \+ n_edge(8,17).
n_edge(8,17) :- cedge(8,17), \+ edge(8,17).
0.45::aedge(7,19) ; 0.44999999999999996::bedge(7,19) ; 0.10000000000000003::cedge(7,19).
edge(7,19) :- aedge(7,19).
n_edge(7,19) :- bedge(7,19).
edge(7,19) :- cedge(7,19), \+ n_edge(7,19).
n_edge(7,19) :- cedge(7,19), \+ edge(7,19).
0.45::aedge(11,17) ; 0.44999999999999996::bedge(11,17) ; 0.10000000000000003::cedge(11,17).
edge(11,17) :- aedge(11,17).
n_edge(11,17) :- bedge(11,17).
edge(11,17) :- cedge(11,17), \+ n_edge(11,17).
n_edge(11,17) :- cedge(11,17), \+ edge(11,17).
