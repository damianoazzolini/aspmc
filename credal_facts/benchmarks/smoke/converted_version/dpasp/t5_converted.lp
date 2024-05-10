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


smokes(X) :- influences(Y, X), smokes(Y ).


0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).
0.4 :: asthma_fact(3).
0.4 :: asthma_fact(4).

asthma_rule(X):- smokes(X), asthma_fact(X).

asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).

asthma_and_stress(X):- stress(X), stress_fact(X), asthma(X). 
smokes(X):- asthma_and_stress(X), not no_smokes(X).
no_smokes(X):- asthma_and_stress(X), not smokes(X).


0.45::ainfluences(1,2) ; 0.45::binfluences(1,2) ; 0.1::cinfluences(1,2).
influences(1,2) :- ainfluences(1,2).
n_influences(1,2) :- binfluences(1,2).
influences(1,2) :- cinfluences(1,2), not n_influences(1,2).
n_influences(1,2) :- cinfluences(1,2), not influences(1,2).


0.45::ainfluences(2,1) ; 0.45::binfluences(2,1) ; 0.1::cinfluences(2,1).
influences(2,1) :- ainfluences(2,1).
n_influences(2,1) :- binfluences(2,1).
influences(2,1) :- cinfluences(2,1), not n_influences(2,1).
n_influences(2,1) :- cinfluences(2,1), not influences(2,1).


0.45::ainfluences(2,3) ; 0.45::binfluences(2,3) ; 0.1::cinfluences(2,3).
influences(2,3) :- ainfluences(2,3).
n_influences(2,3) :- binfluences(2,3).
influences(2,3) :- cinfluences(2,3), not n_influences(2,3).
n_influences(2,3) :- cinfluences(2,3), not influences(2,3).


0.45::ainfluences(3,4) ; 0.45::binfluences(3,4) ; 0.1::cinfluences(3,4).
influences(3,4) :- ainfluences(3,4).
n_influences(3,4) :- binfluences(3,4).
influences(3,4) :- cinfluences(3,4), not n_influences(3,4).
n_influences(3,4) :- cinfluences(3,4), not influences(3,4).


person(3).
person(4).

qr:- smokes(1).

#query(qr).
