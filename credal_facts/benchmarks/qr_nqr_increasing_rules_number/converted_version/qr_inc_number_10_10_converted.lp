
0.45::va00 ; 0.45::va01 ; 0.1::va02.
a0 :- va00.
n_a0 :- va01.
a0 :- va02, \+ n_a0.
n_a0 :- va02, \+ a0.
0.45::va10 ; 0.45::va11 ; 0.1::va12.
a1 :- va10.
n_a1 :- va11.
a1 :- va12, \+ n_a1.
n_a1 :- va12, \+ a1.
0.45::va20 ; 0.45::va21 ; 0.1::va22.
a2 :- va20.
n_a2 :- va21.
a2 :- va22, \+ n_a2.
n_a2 :- va22, \+ a2.
0.45::va30 ; 0.45::va31 ; 0.1::va32.
a3 :- va30.
n_a3 :- va31.
a3 :- va32, \+ n_a3.
n_a3 :- va32, \+ a3.
0.45::va40 ; 0.45::va41 ; 0.1::va42.
a4 :- va40.
n_a4 :- va41.
a4 :- va42, \+ n_a4.
n_a4 :- va42, \+ a4.
0.45::va50 ; 0.45::va51 ; 0.1::va52.
a5 :- va50.
n_a5 :- va51.
a5 :- va52, \+ n_a5.
n_a5 :- va52, \+ a5.
0.45::va60 ; 0.45::va61 ; 0.1::va62.
a6 :- va60.
n_a6 :- va61.
a6 :- va62, \+ n_a6.
n_a6 :- va62, \+ a6.
0.45::va70 ; 0.45::va71 ; 0.1::va72.
a7 :- va70.
n_a7 :- va71.
a7 :- va72, \+ n_a7.
n_a7 :- va72, \+ a7.
0.45::va80 ; 0.45::va81 ; 0.1::va82.
a8 :- va80.
n_a8 :- va81.
a8 :- va82, \+ n_a8.
n_a8 :- va82, \+ a8.
0.45::va90 ; 0.45::va91 ; 0.1::va92.
a9 :- va90.
n_a9 :- va91.
a9 :- va92, \+ n_a9.
n_a9 :- va92, \+ a9.

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

query(qr).
