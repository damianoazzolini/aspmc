
0.45::va00 ; 0.45::va01 ; 0.1::va02.
a0 :- va00.
n_a0 :- va01.
a0 :- va02, not n_a0.
n_a0 :- va02, not a0.
0.45::va10 ; 0.45::va11 ; 0.1::va12.
a1 :- va10.
n_a1 :- va11.
a1 :- va12, not n_a1.
n_a1 :- va12, not a1.
0.45::va20 ; 0.45::va21 ; 0.1::va22.
a2 :- va20.
n_a2 :- va21.
a2 :- va22, not n_a2.
n_a2 :- va22, not a2.
0.45::va30 ; 0.45::va31 ; 0.1::va32.
a3 :- va30.
n_a3 :- va31.
a3 :- va32, not n_a3.
n_a3 :- va32, not a3.
0.45::va40 ; 0.45::va41 ; 0.1::va42.
a4 :- va40.
n_a4 :- va41.
a4 :- va42, not n_a4.
n_a4 :- va42, not a4.
0.45::va50 ; 0.45::va51 ; 0.1::va52.
a5 :- va50.
n_a5 :- va51.
a5 :- va52, not n_a5.
n_a5 :- va52, not a5.
0.45::va60 ; 0.45::va61 ; 0.1::va62.
a6 :- va60.
n_a6 :- va61.
a6 :- va62, not n_a6.
n_a6 :- va62, not a6.
0.45::va70 ; 0.45::va71 ; 0.1::va72.
a7 :- va70.
n_a7 :- va71.
a7 :- va72, not n_a7.
n_a7 :- va72, not a7.
0.45::va80 ; 0.45::va81 ; 0.1::va82.
a8 :- va80.
n_a8 :- va81.
a8 :- va82, not n_a8.
n_a8 :- va82, not a8.
0.45::va90 ; 0.45::va91 ; 0.1::va92.
a9 :- va90.
n_a9 :- va91.
a9 :- va92, not n_a9.
n_a9 :- va92, not a9.
0.45::va100 ; 0.45::va101 ; 0.1::va102.
a10 :- va100.
n_a10 :- va101.
a10 :- va102, not n_a10.
n_a10 :- va102, not a10.
0.45::va110 ; 0.45::va111 ; 0.1::va112.
a11 :- va110.
n_a11 :- va111.
a11 :- va112, not n_a11.
n_a11 :- va112, not a11.
0.45::va120 ; 0.45::va121 ; 0.1::va122.
a12 :- va120.
n_a12 :- va121.
a12 :- va122, not n_a12.
n_a12 :- va122, not a12.
0.45::va130 ; 0.45::va131 ; 0.1::va132.
a13 :- va130.
n_a13 :- va131.
a13 :- va132, not n_a13.
n_a13 :- va132, not a13.
0.45::va140 ; 0.45::va141 ; 0.1::va142.
a14 :- va140.
n_a14 :- va141.
a14 :- va142, not n_a14.
n_a14 :- va142, not a14.

qr:- a0, a2, a4, a6, a8, a10, a12, a14.
qr:- a1, a3, a5, a7, a9, a11, a13, not nqr.
nqr:- a1, a3, a5, a7, a9, a11, a13, not qr.


#query(qr).
