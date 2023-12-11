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

qr:- a0, a2, a4, a6, a8.
qr:- a1, a3, a5, a7, a9, not nqr.
nqr:- a1, a3, a5, a7, a9, not qr.
