0.5::c1.
0.5::c2.

k0 :- c1.
k1 :- \+ c1, c2.
k2 :- \+ c1, \+ c2.

qr:- k0.
qr:- k1.
qr:- k2.

query(qr).


0.5::a0.
0.5::a1.
0.5::a2.
0.5::a3.
0.5::a4.
0.5::a5.

qrw:- a0.
qrw :- a1, \+ nqrw.
nqrw :- a1, \+ qrw.
qrw:- a2.
qrw :- a3, \+ nqrw.
nqrw :- a3, \+ qrw.
qrw:- a4.
qrw :- a5, \+ nqrw.
nqrw :- a5, \+ qrw.