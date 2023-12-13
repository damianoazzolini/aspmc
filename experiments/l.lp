0.4::a.
0.7::b.
qr :- a.
qr :- b, \+ nqr.
nqr :- b, \+ qr.