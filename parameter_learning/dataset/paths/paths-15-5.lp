% Dataset paths of size 15 and 5 interpretations and seed 95

path(X,Y):- connected(X,Z), path(Z,Y).
path(X,Y):- connected(X,Y).

connected(X,Y) :- edge(X,Y), \+ nconnected(X,Y).
nconnected(X,Y):- edge(X,Y), \+ connected(X,Y).

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

#positive(1,path(5,8)).
#positive(1,path(9,13)).
#positive(1,path(3,6)).

#negative(2,path(1,2)).

#negative(3,path(6,7)).
#positive(3,path(1,8)).
#positive(3,path(3,11)).

#negative(4,path(3,4)).
#negative(4,path(8,9)).
#negative(4,path(4,12)).

#negative(5,path(7,8)).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
