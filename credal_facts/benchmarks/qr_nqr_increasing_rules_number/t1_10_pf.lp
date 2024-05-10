0.03::a0.
0.03::a1.
0.03::a2.
0.03::a3.
0.03::a4.
0.03::a5.
0.03::a6.
0.03::a7.
0.03::a8.
0.03::a9.

qr:- a0.
qr :- a1, \+ nqr.
nqr :- a1, \+ qr.
qr:- a2.
qr :- a3, \+ nqr.
nqr :- a3, \+ qr.
qr:- a4.
qr :- a5, \+ nqr.
nqr :- a5, \+ qr.
qr:- a6.
qr :- a7, \+ nqr.
nqr :- a7, \+ qr.
qr:- a8.
qr :- a9, \+ nqr.
nqr :- a9, \+ qr.


