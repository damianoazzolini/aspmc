
0.5::va0.
0.5::vb0.

a0 :- va0.
a10 :- \+ va0, vb0.
a20 :- \+ va0, \+ vb0.

0.5::va1.
0.5::vb1.

a01 :- va1.
a1 :- \+ va1, vb1.
a21 :- \+ va1, \+ vb1.

0.5::va2.
0.5::vb2.

a02 :- va2.
a12 :- \+ va2, vb2.
a2 :- \+ va2, \+ vb2.

0.5::va3.
0.5::vb3.

a3 :- va3.
a13 :- \+ va3, vb3.
a23 :- \+ va3, \+ vb3.

0.5::va4.
0.5::vb4.

a04 :- va4.
a4 :- \+ va4, vb4.
a24 :- \+ va4, \+ vb4.

0.5::va5.
0.5::vb5.

a05 :- va5.
a15 :- \+ va5, vb5.
a5 :- \+ va5, \+ vb5.

0.5::va6.
0.5::vb6.

a6 :- va6.
a16 :- \+ va6, vb6.
a26 :- \+ va6, \+ vb6.

0.5::va7.
0.5::vb7.

a07 :- va7.
a7 :- \+ va7, vb7.
a27 :- \+ va7, \+ vb7.



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
