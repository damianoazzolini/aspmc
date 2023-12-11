optimizable [0.4,0.95]::edge(1,2).
optimizable [0.4,0.95]::edge(1,3).
optimizable [0.4,0.95]::edge(2,4).
optimizable [0.4,0.95]::edge(3,5).
optimizable [0.4,0.95]::edge(4,6).
optimizable [0.4,0.95]::edge(5,6).
optimizable [0.4,0.95]::edge(6,7).
optimizable [0.4,0.95]::edge(6,8).
optimizable [0.4,0.95]::edge(7,9).
optimizable [0.4,0.95]::edge(8,9).
optimizable [0.4,0.95]::edge(9,10).


path(X,X):- node(X).
path(X,Y):- path(X,Z), edge(Z,Y).

transmit(A,B):- path(A,B), node(A), node(B), not not_transmit(A,B).
not_transmit(A,B):- path(A,B), node(A), node(B), not transmit(A,B).

qr:- transmit(1,10).
node(1).
node(2).
node(3).
node(4).
node(5).
node(6).
node(7).
node(8).
node(9).
node(10).
