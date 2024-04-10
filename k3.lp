

0.5::va0.
0.5::vb0.

a0 :- va0.
a10 :- \+ va0, vb0.
a20 :- \+ va0, \+ vb0.

0.5::va1.
0.5::vb1.

a1 :- va1.
a11 :- \+ va1, vb1.
a21 :- \+ va1, \+ vb1.

qr:- a0.
qr:- a1, \+ nqr.
nqr:- a1, \+ qr.

