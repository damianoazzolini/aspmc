optimizable [0.4,0.95]::edge(1,2).
optimizable [0.4,0.95]::edge(1,3).
optimizable [0.4,0.95]::edge(2,4).
0.9318293737581665::edge(3,5).
0.9615464115892465::edge(4,6).


path(X,X):- node(X).
path(X,Y):- path(X,Z), edge(Z,Y).

transmit(A,B):- path(A,B), node(A), node(B), not not_transmit(A,B).
not_transmit(A,B):- path(A,B), node(A), node(B), not transmit(A,B).

qr:- transmit(1,6).
node(1).
node(2).
node(3).
node(4).
node(5).
node(6).
