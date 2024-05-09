% Dataset smokers of size 6 and 20 interpretations with seed 120

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
ill(X)  :- smokes(X), asthma(X), \+ n_ill(X).
n_ill(X):- smokes(X), asthma(X), pred, \+ ill(X).

#learnable(influences(1,2)). 
#learnable(influences(2,1)).



0.1 :: asthma_f(3).
0.3 :: stress(3).
0.4 :: stress_fact(3).
0.4 :: asthma_fact(3).

0.1 :: asthma_f(4).
0.3 :: stress(4).
0.4 :: stress_fact(4).
0.4 :: asthma_fact(4).

#learnable(influences(2,3)).

#learnable(influences(3,4)).

#learnable(influences(4,1)).

#positive(1,ill(2)).
#positive(1,ill(4)).

#negative(2,ill(1)).
#negative(2,ill(2)).
#positive(2,ill(4)).
#positive(2,ill(3)).

#negative(3,ill(3)).

#negative(4,ill(3)).
#positive(4,ill(1)).
#negative(4,ill(2)).

#negative(5,ill(1)).
#positive(5,ill(3)).

#positive(6,ill(4)).
#positive(6,ill(3)).
#negative(6,ill(2)).
#negative(6,ill(1)).

#negative(7,ill(2)).
#positive(7,ill(3)).
#negative(7,ill(4)).

#positive(8,ill(3)).
#negative(8,ill(2)).
#negative(8,ill(4)).

#positive(9,ill(1)).
#negative(9,ill(4)).
#negative(9,ill(2)).

#positive(10,ill(2)).
#positive(10,ill(4)).
#negative(10,ill(1)).

#positive(11,ill(2)).
#negative(11,ill(1)).
#positive(11,ill(3)).

#negative(12,ill(1)).
#positive(12,ill(2)).
#negative(12,ill(3)).
#negative(12,ill(4)).

#positive(13,ill(2)).
#positive(13,ill(4)).
#negative(13,ill(1)).
#positive(13,ill(3)).

#negative(14,ill(1)).
#negative(14,ill(2)).
#negative(14,ill(4)).
#positive(14,ill(3)).

#negative(15,ill(4)).
#positive(15,ill(2)).
#positive(15,ill(1)).
#negative(15,ill(3)).

#positive(16,ill(4)).
#positive(16,ill(3)).
#positive(16,ill(1)).

#positive(17,ill(1)).
#positive(17,ill(4)).

#negative(18,ill(2)).
#positive(18,ill(4)).

#negative(19,ill(3)).

#negative(20,ill(4)).
#negative(20,ill(1)).
#negative(20,ill(3)).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
