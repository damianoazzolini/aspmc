% Dataset smokers of size 2 and 10 interpretations with seed 20

0.1 :: asthma_f(1).
0.1 :: asthma_f(2).

0.3 :: stress(1).
0.3 :: stress(2).

0.4 :: stress_fact(1).
0.4 :: stress_fact(2).

smokes(X) :- stress(X), stress_fact(X).

smokes(X) :- influences(Y,X), smokes(Y).


0.4 :: asthma_fact(1).
0.4 :: asthma_fact(2).

asthma_rule(X):- smokes(X), asthma_fact(X).

asthma(X):- asthma_f(X).
asthma(X):- asthma_rule(X).

0.2 :: pred.
ill(X)  :- smokes(X), asthma(X), not n_ill(X).
n_ill(X):- smokes(X), asthma(X), pred, not ill(X).

#learnable(influences(1,2)). 
#learnable(influences(2,1)).



0.1 :: asthma_f(3).
0.3 :: stress(3).
0.4 :: stress_fact(3).
0.4 :: asthma_fact(3).

#positive(1,ill(3)).
#negative(1,ill(1)).
#positive(1,ill(2)).

#negative(2,ill(1)).
#positive(2,ill(3)).
#negative(2,ill(2)).

#negative(3,ill(3)).
#negative(3,ill(1)).

#negative(4,ill(3)).
#negative(4,ill(2)).
#negative(4,ill(1)).

#negative(5,ill(3)).

#negative(6,ill(1)).

#positive(7,ill(3)).
#positive(7,ill(2)).

#negative(8,ill(3)).

#positive(9,ill(2)).

#negative(10,ill(3)).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
