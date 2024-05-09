% Dataset shop of size 4 and 20 interpretations with seed 80

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



:- bought(onions),bought(beans).
:- bought(beans),bought(tomato).
:- bought(beans),bought(spaghetti).
:- bought(tomato),bought(onions).

#negative(1,bought(tomato)).
#negative(1,bought(steak)).

#negative(2,bought(tomato)).
#positive(2,bought(onions)).
#negative(2,bought(spaghetti)).
#positive(2,bought(beans)).
#negative(2,bought(steak)).

#negative(3,bought(beans)).

#negative(4,bought(spaghetti)).

#positive(5,bought(beans)).
#negative(5,bought(spaghetti)).
#negative(5,bought(tomato)).

#negative(6,bought(tomato)).
#negative(6,bought(spaghetti)).
#negative(6,bought(beans)).
#positive(6,bought(onions)).

#positive(7,bought(spaghetti)).
#negative(7,bought(steak)).
#positive(7,bought(beans)).

#negative(8,bought(steak)).

#negative(9,bought(beans)).
#positive(9,bought(spaghetti)).
#positive(9,bought(steak)).

#positive(10,bought(steak)).
#negative(10,bought(tomato)).
#negative(10,bought(spaghetti)).
#positive(10,bought(beans)).

#positive(11,bought(spaghetti)).

#positive(12,bought(beans)).
#positive(12,bought(onions)).
#positive(12,bought(tomato)).
#negative(12,bought(steak)).

#positive(13,bought(tomato)).
#positive(13,bought(beans)).

#negative(14,bought(tomato)).
#negative(14,bought(spaghetti)).
#negative(14,bought(beans)).
#positive(14,bought(steak)).

#negative(15,bought(beans)).

#negative(16,bought(beans)).
#positive(16,bought(onions)).
#positive(16,bought(tomato)).

#positive(17,bought(steak)).

#positive(18,bought(steak)).
#positive(18,bought(spaghetti)).

#positive(19,bought(spaghetti)).
#negative(19,bought(tomato)).
#positive(19,bought(steak)).

#positive(20,bought(steak)).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
