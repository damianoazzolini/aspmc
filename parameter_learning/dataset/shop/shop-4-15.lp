% Dataset shop of size 4 and 15 interpretations with seed 60

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



:- bought(steak),bought(onions).
:- bought(steak),bought(tomato).
:- bought(onions),bought(beans).
:- bought(spaghetti),bought(steak).

#negative(1,bought(steak)).
#positive(1,bought(beans)).

#positive(2,bought(onions)).

#negative(3,bought(steak)).
#positive(3,bought(beans)).

#negative(4,bought(tomato)).
#positive(4,bought(spaghetti)).
#negative(4,bought(steak)).
#negative(4,bought(beans)).
#positive(4,bought(onions)).

#negative(5,bought(steak)).

#positive(6,bought(steak)).
#positive(6,bought(beans)).
#positive(6,bought(spaghetti)).

#negative(7,bought(beans)).
#negative(7,bought(spaghetti)).
#positive(7,bought(tomato)).
#negative(7,bought(steak)).

#positive(8,bought(beans)).
#positive(8,bought(tomato)).
#positive(8,bought(steak)).
#negative(8,bought(spaghetti)).

#positive(9,bought(onions)).
#negative(9,bought(tomato)).
#positive(9,bought(steak)).

#positive(10,bought(spaghetti)).
#negative(10,bought(beans)).

#negative(11,bought(tomato)).

#positive(12,bought(onions)).
#positive(12,bought(tomato)).
#positive(12,bought(spaghetti)).
#positive(12,bought(steak)).
#negative(12,bought(beans)).

#negative(13,bought(onions)).
#positive(13,bought(steak)).
#negative(13,bought(spaghetti)).
#negative(13,bought(beans)).

#positive(14,bought(onions)).
#positive(14,bought(spaghetti)).
#negative(14,bought(beans)).

#positive(15,bought(tomato)).
#positive(15,bought(steak)).
#negative(15,bought(beans)).
#negative(15,bought(spaghetti)).
#negative(15,bought(onions)).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
