% Dataset paths of size 15 and 10 interpretations and seed 175

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

#negative(1,path(11,13)).
#negative(1,path(5,13)).

#positive(2,path(3,6)).
#positive(2,path(3,8)).
#negative(2,path(1,4)).

#positive(3,path(3,10)).
#negative(3,path(6,10)).

#negative(4,path(9,12)).

#positive(5,path(2,13)).
#positive(5,path(3,6)).

#positive(6,path(3,6)).
#positive(6,path(6,12)).

#positive(7,path(1,8)).

#positive(8,path(2,10)).

#positive(9,path(2,13)).

#positive(10,path(5,8)).
#negative(10,path(6,7)).
#negative(10,path(10,11)).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
