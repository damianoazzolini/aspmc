[0.45,0.55]::a0.
[0.45,0.55]::a1.
[0.45,0.55]::a2.
[0.45,0.55]::a3.
[0.45,0.55]::a4.
[0.45,0.55]::a5.
[0.45,0.55]::a6.
[0.45,0.55]::a7.
[0.45,0.55]::a8.
[0.45,0.55]::a9.

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
