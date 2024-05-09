% Dataset paths of size 10 and 5 interpretations and seed 65

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
#positive(1,path(5,8)).

#positive(2,path(3,6)).
#positive(2,path(2,9)).

#negative(3,path(8,9)).

#negative(4,path(7,8)).
#positive(4,path(1,6)).

#negative(5,path(7,9)).
#positive(5,path(2,7)).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
