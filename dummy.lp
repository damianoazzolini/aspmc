0.5::edge(1,2).
0.5::edge(1,3).
0.816343623039356::edge(2,4).
0.8285621451275564::edge(3,5).
0.8780109837190632::edge(4,6).
0.9710507923144887::edge(5,6).
0.8081620481122697::edge(6,7).
0.8346009914789065::edge(6,8).
0.8564691055626658::edge(7,9).
0.9253908847437081::edge(8,9).
 

path(X,X):- node(X).
path(X,Y):- path(X,Z), edge(Z,Y).

transmit(A,B):- path(A,B), node(A), node(B), \+ not_transmit(A,B).
not_transmit(A,B):- path(A,B), node(A), node(B), \+ transmit(A,B).


qr:- transmit(1,9).
node(1).
node(2).
node(3).
node(4).
node(5).
node(6).
node(7).
node(8).
node(9).