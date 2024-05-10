[0.05,0.95]::a0.
[0.05,0.95]::a1.
[0.05,0.95]::a2.
[0.05,0.95]::a3.
[0.05,0.95]::a4.
[0.05,0.95]::a5.
[0.05,0.95]::a6.
[0.05,0.95]::a7.
[0.05,0.95]::a8.
[0.05,0.95]::a9.

qr:- a0.
qr:- a1, not nqr.
nqr:- a1, not qr.
qr:- a2.
qr:- a3, not nqr.
nqr:- a3, not qr.
qr:- a4.
qr:- a5, not nqr.
nqr:- a5, not qr.
qr:- a6.
qr:- a7, not nqr.
nqr:- a7, not qr.
qr:- a8.
qr:- a9, not nqr.
nqr:- a9, not qr.

#query(qr).
