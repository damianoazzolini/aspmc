% from SMProbLog: https://arxiv.org/pdf/2304.00879.pdf

0.1 :: asthma_f(1).
0.1 :: asthma_f(2).
0.1 :: asthma_f(3).
0.1 :: asthma_f(4).

0.3 :: stress(1).
0.3 :: stress(2).
0.3 :: stress(3).
0.3 :: stress(4).

0.4 :: stress_fact(1).
0.4 :: stress_fact(2).
0.4 :: stress_fact(3).
0.4 :: stress_fact(4).


smokes(X) :- influences(Y, X), smokes(Y ), k0(X), k1(Y).

0.5::c0(1). 
0.5::c0(2). 
0.5::c0(3). 
0.5::c0(4). 

0.5::c1(1).
0.5::c1(2).
0.5::c1(3).
0.5::c1(4).

person(1).
person(2).
person(3).
person(4).

k0(X):- c0(X), person(X).
k1(X):- \+ c0(X), c1(X), person(X).
k2(X):- \+ c0(X), \+ c1(X), person(X).


0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).
0.4 :: asthma_fact(3).
0.4 :: asthma_fact(4).

asthma_rule(X):- smokes(X), asthma_fact(X).

asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).

asthma_and_stress(X):- stress(X), stress_fact(X), asthma(X). 
smokes(X):- asthma_and_stress(X), \+ no_smokes(X).
no_smokes(X):- asthma_and_stress(X), \+ smokes(X).

0.5::influences(1,2). 
0.5::influences(2,1).

person(3).
person(4).

qr:- smokes(1).

0.5::influences(2,3).
0.5::influences(3,4).
0.5::influences(4,1).