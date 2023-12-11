% from SMProbLog: https://arxiv.org/pdf/2304.00879.pdf

0.1 :: asthma_f(1).
0.1 :: asthma_f(2).
0.1 :: asthma_f(3).

0.3 :: stress(1).
0.3 :: stress(2).
0.3 :: stress(3).

0.4 :: stress_fact(1).
0.4 :: stress_fact(2).
0.4 :: stress_fact(3).

% smokes(X):- stress(X), stress_fact(X).

smokes(X) :- influences(Y, X), smokes(Y ).


0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).
0.4 :: asthma_fact(3).

asthma_rule(X):- smokes(X), asthma_fact(X).

asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).

asthma_and_stress(X):- stress(X), stress_fact(X), asthma(X). 
smokes(X):- asthma_and_stress(X), not no_smokes(X).
no_smokes(X):- asthma_and_stress(X), not smokes(X).

optimizable [0.05,0.95]::influences(1,2). 
optimizable [0.05,0.95]::influences(2,1).

person(3).

qr:- smokes(1).
