% Dataset shop of size 4 and 10 interpretations with seed 40

bought(spaghetti,john) :- shops(john), \+ bought(steak,john).
bought(steak,john)     :- shops(john), \+ bought(spaghetti,john).
bought(spaghetti,mary) :- shops(mary), \+ bought(beans,mary).
bought(beans,mary)     :- shops(mary), \+ bought(spaghetti,mary).
bought(tomato,carl)    :- shops(carl), \+ bought(onions,carl).
bought(onions,carl)    :- shops(carl), \+ bought(tomato,carl).
bought(steak,louis)    :- shops(louis), \+ bought(onions,louis).
bought(onions,louis)   :- shops(louis), \+ bought(steak,louis).

bought(spaghetti) :- bought(spaghetti,_).
bought(steak)     :- bought(steak,_).
bought(beans)     :- bought(beans,_).
bought(onions)    :- bought(onions,_).
bought(tomato)    :- bought(tomato,_).

#learnable(shops(john)).
#learnable(shops(mary)).
#learnable(shops(carl)).
#learnable(shops(louis)).



:- bought(tomato),bought(spaghetti),bought(steak).
:- bought(beans),bought(steak),bought(spaghetti).
:- bought(beans),bought(onions),bought(tomato).
:- bought(onions),bought(spaghetti),bought(tomato).
:- bought(steak),bought(spaghetti),bought(tomato).

#positive(1,bought(tomato)).
#negative(1,bought(spaghetti)).

#negative(2,bought(beans)).
#negative(2,bought(onions)).
#positive(2,bought(tomato)).
#negative(2,bought(spaghetti)).
#positive(2,bought(steak)).

#negative(3,bought(beans)).
#negative(3,bought(steak)).
#negative(3,bought(tomato)).

#positive(4,bought(onions)).
#positive(4,bought(steak)).
#negative(4,bought(spaghetti)).

#negative(5,bought(spaghetti)).
#positive(5,bought(beans)).
#negative(5,bought(tomato)).
#positive(5,bought(onions)).
#negative(5,bought(steak)).

#negative(6,bought(onions)).
#positive(6,bought(tomato)).

#positive(7,bought(tomato)).
#positive(7,bought(beans)).
#positive(7,bought(onions)).

#positive(8,bought(spaghetti)).
#positive(8,bought(beans)).

#negative(9,bought(onions)).
#negative(9,bought(tomato)).

#negative(10,bought(onions)).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
