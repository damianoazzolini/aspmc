% Dataset smokers of size 1 and 20 interpretations with seed 20

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



#positive(1,ill(2)).

#positive(2,ill(2)).

#negative(3,ill(1)).

#negative(4,ill(1)).

#negative(5,ill(2)).
#negative(5,ill(1)).

#negative(6,ill(2)).
#negative(6,ill(1)).

#negative(7,ill(1)).

#negative(8,ill(1)).

#positive(9,ill(2)).
#positive(9,ill(1)).

#positive(10,ill(2)).

#negative(11,ill(1)).

#negative(12,ill(2)).
#positive(12,ill(1)).

#positive(13,ill(1)).
#positive(13,ill(2)).

#negative(14,ill(1)).
#positive(14,ill(2)).

#negative(15,ill(2)).
#positive(15,ill(1)).

#positive(16,ill(1)).
#negative(16,ill(2)).

#positive(17,ill(1)).
#positive(17,ill(2)).

#positive(18,ill(2)).
#positive(18,ill(1)).

#positive(19,ill(1)).

#negative(20,ill(1)).
#negative(20,ill(2)).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
