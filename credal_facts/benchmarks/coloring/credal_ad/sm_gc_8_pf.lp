
red(X) :- node(X), \+ green(X), \+ blue(X).
green(X) :- node(X), \+ red(X), \+ blue(X).
blue(X) :- node(X), \+ red(X), \+ green(X).

e(X,Y) :- edge(X,Y).
e(Y,X) :- edge(Y,X).

:- e(X,Y), red(X), red(Y).
:- e(X,Y), green(X), green(Y).
:- e(X,Y), blue(X), blue(Y), k2(X), k2(Y).

0.5::c0(1). 
0.5::c0(2). 
0.5::c0(3). 
0.5::c0(4). 
0.5::c0(5). 
0.5::c0(6). 
0.5::c0(7). 

0.5::c1(1).
0.5::c1(2).
0.5::c1(3).
0.5::c1(4).
0.5::c1(5).
0.5::c1(6).
0.5::c1(7).

k0(X):- node(X), c0(X).
k1(X):- node(X), \+ c0(X), c1(X).
k2(X):- node(X), \+ c0(X), \+ c1(X).

0.6::edge(1,2).
0.1::edge(1,3).
0.4::edge(2,5).
0.3::edge(2,6).
0.3::edge(3,4).
0.8::edge(4,5).
0.2::edge(5,6).
0.3::edge(5,7).
0.3::edge(3,7).
0.3::edge(3,5).

qr:- blue(1).
qr:- blue(3).
qr:- blue(5).
qr:- blue(7).

red(1).
green(4).
green(6).

node(1).
node(2).
node(3).
node(4).
node(5).
node(6).
node(7).

