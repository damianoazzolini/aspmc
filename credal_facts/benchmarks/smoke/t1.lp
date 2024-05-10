% from SMProbLog: https://arxiv.org/pdf/2304.00879.pdf

0.1 :: asthma_f(1).
0.1 :: asthma_f(2).


0.3 :: stress(1).
0.3 :: stress(2).


0.4 :: stress_fact(1).
0.4 :: stress_fact(2).


% smokes(X):- stress(X), stress_fact(X).

smokes(X) :- influences(Y, X), smokes(Y ).


0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).

asthma_rule(X):- smokes(X), asthma_fact(X).

asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).

asthma_and_stress(X):- stress(X), stress_fact(X), asthma(X). 
smokes(X):- asthma_and_stress(X), \+ no_smokes(X).
no_smokes(X):- asthma_and_stress(X), \+ smokes(X).

0.5::influences(1,2). 
0.5::influences(2,1).

qr:- smokes(1).
