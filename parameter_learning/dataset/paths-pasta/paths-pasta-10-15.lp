% Dataset paths of size 10 and 15 interpretations and seed 175

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

#negative(1,path(7,9)).
#negative(1,path(4,5)).

#positive(2,path(5,8)).
#positive(2,path(2,9)).
#negative(2,path(1,3)).

#positive(3,path(2,7)).
#positive(3,path(5,8)).

#positive(4,path(2,7)).
#negative(4,path(8,9)).
#negative(4,path(5,7)).

#negative(5,path(5,7)).
#positive(5,path(5,8)).
#positive(5,path(3,8)).

#positive(6,path(1,6)).

#positive(7,path(2,9)).

#positive(8,path(3,6)).

#positive(9,path(3,8)).
#negative(9,path(4,5)).
#negative(9,path(7,8)).

#positive(10,path(3,6)).

#negative(11,path(4,5)).

#negative(12,path(4,8)).

#positive(13,path(3,8)).

#negative(14,path(2,3)).

#positive(15,path(2,7)).
#negative(15,path(5,7)).
#positive(15,path(3,8)).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
