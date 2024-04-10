0.3::va00 ; 0.4::va01 ; 0.3::va02.
a0 :- va00.
n_a0 :- va01.
a0 :- va02, \+ n_a0.
n_a0 :- va02, \+ a0.
0.3::va10 ; 0.4::va11 ; 0.3::va12.
a1 :- va10.
n_a1 :- va11.
a1 :- va12, \+ n_a1.
n_a1 :- va12, \+ a1.
0.3::va20 ; 0.4::va21 ; 0.3::va22.
a2 :- va20.
n_a2 :- va21.
a2 :- va22, \+ n_a2.
n_a2 :- va22, \+ a2.
0.3::va30 ; 0.4::va31 ; 0.3::va32.
a3 :- va30.
n_a3 :- va31.
a3 :- va32, \+ n_a3.
n_a3 :- va32, \+ a3.
0.3::va40 ; 0.4::va41 ; 0.3::va42.
a4 :- va40.
n_a4 :- va41.
a4 :- va42, \+ n_a4.
n_a4 :- va42, \+ a4.
0.3::va50 ; 0.4::va51 ; 0.3::va52.
a5 :- va50.
n_a5 :- va51.
a5 :- va52, \+ n_a5.
n_a5 :- va52, \+ a5.


qr:- a0.
qr :- a1, \+ nqr.
nqr :- a1, \+ qr.
qr:- a2.
qr :- a3, \+ nqr.
nqr :- a3, \+ qr.
qr:- a4.
qr :- a5, \+ nqr.
nqr :- a5, \+ qr.

query(qr).