
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

0.5::va8.
0.5::vb8.

a08 :- va8.
a18 :- \+ va8, vb8.
a8 :- \+ va8, \+ vb8.

0.5::va9.
0.5::vb9.

a9 :- va9.
a19 :- \+ va9, vb9.
a29 :- \+ va9, \+ vb9.

0.5::va10.
0.5::vb10.

a010 :- va10.
a10 :- \+ va10, vb10.
a210 :- \+ va10, \+ vb10.

0.5::va11.
0.5::vb11.

a011 :- va11.
a111 :- \+ va11, vb11.
a11 :- \+ va11, \+ vb11.

0.5::va12.
0.5::vb12.

a12 :- va12.
a112 :- \+ va12, vb12.
a212 :- \+ va12, \+ vb12.

0.5::va13.
0.5::vb13.

a013 :- va13.
a13 :- \+ va13, vb13.
a213 :- \+ va13, \+ vb13.

0.5::va14.
0.5::vb14.

a014 :- va14.
a114 :- \+ va14, vb14.
a14 :- \+ va14, \+ vb14.

0.5::va15.
0.5::vb15.

a15 :- va15.
a115 :- \+ va15, vb15.
a215 :- \+ va15, \+ vb15.

0.5::va16.
0.5::vb16.

a016 :- va16.
a16 :- \+ va16, vb16.
a216 :- \+ va16, \+ vb16.

0.5::va17.
0.5::vb17.

a017 :- va17.
a117 :- \+ va17, vb17.
a17 :- \+ va17, \+ vb17.

0.5::va18.
0.5::vb18.

a18 :- va18.
a118 :- \+ va18, vb18.
a218 :- \+ va18, \+ vb18.

0.5::va19.
0.5::vb19.

a019 :- va19.
a19 :- \+ va19, vb19.
a219 :- \+ va19, \+ vb19.


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
qr:- a10.
qr :- a11, \+ nqr.
nqr :- a11, \+ qr.
qr:- a12.
qr :- a13, \+ nqr.
nqr :- a13, \+ qr.
qr:- a14.
qr :- a15, \+ nqr.
nqr :- a15, \+ qr.
qr:- a16.
qr :- a17, \+ nqr.
nqr :- a17, \+ qr.
qr:- a18.
qr :- a19, \+ nqr.
nqr :- a19, \+ qr.

