% Dataset shop of size 4 and 5 interpretations with seed 20

bought(spaghetti,john) :- shops(john), not  bought(steak,john).
bought(steak,john)     :- shops(john), not  bought(spaghetti,john).
bought(spaghetti,mary) :- shops(mary), not  bought(beans,mary).
bought(beans,mary)     :- shops(mary), not  bought(spaghetti,mary).
bought(tomato,carl)    :- shops(carl), not  bought(onions,carl).
bought(onions,carl)    :- shops(carl), not  bought(tomato,carl).
bought(steak,louis)    :- shops(louis), not  bought(onions,louis).
bought(onions,louis)   :- shops(louis), not  bought(steak,louis).

bought(spaghetti) :- bought(spaghetti,_).
bought(steak)     :- bought(steak,_).
bought(beans)     :- bought(beans,_).
bought(onions)    :- bought(onions,_).
bought(tomato)    :- bought(tomato,_).

#learnable(shops(john)).
#learnable(shops(mary)).
#learnable(shops(carl)).
#learnable(shops(louis)).



:- bought(spaghetti),bought(onions).
:- bought(tomato),bought(steak).
:- bought(spaghetti),bought(tomato).

#negative(1,bought(spaghetti)).
#negative(1,bought(onions)).
#negative(1,bought(tomato)).
#negative(1,bought(steak)).

#negative(2,bought(beans)).
#negative(2,bought(tomato)).
#positive(2,bought(spaghetti)).

#negative(3,bought(steak)).

#positive(4,bought(beans)).
#negative(4,bought(onions)).

#positive(5,bought(steak)).
#negative(5,bought(spaghetti)).
#positive(5,bought(beans)).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
