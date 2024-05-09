% Dataset smokers of size 6 and 10 interpretations with seed 60

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

#positive(1,ill(3)).
#negative(1,ill(2)).
#negative(1,ill(4)).

#positive(2,ill(1)).
#positive(2,ill(2)).
#negative(2,ill(3)).

#positive(3,ill(2)).

#positive(4,ill(4)).

#negative(5,ill(2)).
#positive(5,ill(4)).

#positive(6,ill(1)).
#positive(6,ill(2)).

#positive(7,ill(1)).
#negative(7,ill(2)).

#negative(8,ill(3)).
#negative(8,ill(1)).

#positive(9,ill(2)).
#positive(9,ill(1)).
#positive(9,ill(3)).

#negative(10,ill(3)).
#positive(10,ill(4)).
#negative(10,ill(1)).
#negative(10,ill(2)).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
