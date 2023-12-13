0.6::edge(a,b).
0.2::edge(b,c).
0.95::edge(d,e).

0.5::edge(c,f).
0.5::edge(a,d).
0.5::edge(e,f).
0.5::edge(c,e).

node(a). 
node(b).
node(c). 
node(d).
node(e). 
node(f).

path(X,X):- node(X).
path(X,Y):- path(X,Z), edge(Z,Y).

transmit(A,B) :- path(A,B), \+ not_transmit(A,B).
not_transmit(A,B):- path(A,B), \+ transmit(A,B).

qr:- transmit(a,f).
qrdf:- transmit(b,f).

% :- #count{A,B:transmit(A,B),path(A,B)} = RB, 
%    #count{A,B:path(A,B)} = R, 
%    100*RB < 95*R.

% time pasta examples/optimizable/graph.lp --query="qr" --optimize --threshold=0.7 --target=upper --verbose --method=SLSQP