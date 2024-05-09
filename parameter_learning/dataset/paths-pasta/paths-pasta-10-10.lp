% Dataset paths of size 10 and 10 interpretations and seed 120

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

#negative(1,path(6,9)).
#negative(1,path(3,4)).
#negative(1,path(4,6)).

#negative(2,path(2,5)).
#positive(2,path(3,6)).
#negative(2,path(4,8)).

#negative(3,path(3,4)).
#positive(3,path(1,8)).

#negative(4,path(3,4)).
#positive(4,path(1,8)).

#positive(5,path(5,8)).

#negative(6,path(6,7)).
#positive(6,path(3,8)).

#negative(7,path(5,9)).

#positive(8,path(2,9)).
#negative(8,path(6,7)).

#negative(9,path(4,5)).
#negative(9,path(6,9)).
#negative(9,path(6,7)).

#positive(10,path(3,6)).
#negative(10,path(4,8)).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
