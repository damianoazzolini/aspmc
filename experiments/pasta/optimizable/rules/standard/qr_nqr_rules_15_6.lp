optimizable [0.4,0.99]::a0.
optimizable [0.4,0.99]::a1.
optimizable [0.4,0.99]::a2.
optimizable [0.4,0.99]::a3.
optimizable [0.4,0.99]::a4.
optimizable [0.4,0.99]::a5.
0.99::a6.
0.99::a7.
0.99::a8.
0.99::a9.
0.99::a10.
0.99::a11.
0.99::a12.
0.99::a13.
0.99::a14.

qr:- a0, a2, a4, a6, a8, a10, a12, a14.
qr:- a1, a3, a5, a7, a9, a11, a13, not nqr.
nqr:- a1, a3, a5, a7, a9, a11, a13, not qr.
