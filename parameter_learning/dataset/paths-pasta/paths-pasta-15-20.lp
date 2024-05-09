% Dataset paths of size 15 and 20 interpretations and seed 335

path(X,Y):- connected(X,Z), path(Z,Y).
path(X,Y):- connected(X,Y).

connected(X,Y) :- edge(X,Y), not nconnected(X,Y).
nconnected(X,Y):- edge(X,Y), not connected(X,Y).

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
node(11).
node(12).
node(13).

#learnable(edge(1,5)).
#learnable(edge(1,7)).
#learnable(edge(2,4)).
#learnable(edge(2,6)).
#learnable(edge(3,5)).
#learnable(edge(3,9)).
#learnable(edge(4,7)).
#learnable(edge(4,9)).
#learnable(edge(5,6)).
#learnable(edge(6,8)).
#learnable(edge(7,10)).
#learnable(edge(8,11)).
#learnable(edge(9,10)).
#learnable(edge(10,13)).
#learnable(edge(11,12)).

#negative(1,path(9,11)).

#negative(2,path(1,9)).
#positive(2,path(3,13)).
#positive(2,path(7,13)).

#negative(3,path(8,13)).

#negative(4,path(7,9)).
#positive(4,path(2,10)).
#positive(4,path(3,10)).

#negative(5,path(9,12)).

#negative(6,path(9,11)).
#positive(6,path(1,10)).

#positive(7,path(2,12)).

#negative(8,path(7,8)).

#positive(9,path(1,10)).
#negative(9,path(7,11)).
#negative(9,path(6,7)).

#negative(10,path(5,10)).
#positive(10,path(4,13)).
#negative(10,path(7,11)).

#negative(11,path(4,5)).
#positive(11,path(6,12)).
#positive(11,path(4,13)).

#positive(12,path(3,13)).
#positive(12,path(5,11)).

#positive(13,path(2,7)).
#negative(13,path(1,4)).

#negative(14,path(8,9)).
#negative(14,path(7,8)).

#negative(15,path(4,5)).
#negative(15,path(1,2)).

#positive(16,path(3,10)).
#negative(16,path(1,2)).
#negative(16,path(6,10)).

#positive(17,path(2,9)).
#negative(17,path(7,11)).
#negative(17,path(7,12)).

#negative(18,path(5,10)).
#negative(18,path(5,7)).

#negative(19,path(5,7)).
#negative(19,path(7,11)).
#negative(19,path(4,6)).

#positive(20,path(9,13)).
#negative(20,path(4,12)).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
