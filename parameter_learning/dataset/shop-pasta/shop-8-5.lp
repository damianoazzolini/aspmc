% Dataset shop of size 8 and 5 interpretations with seed 40

bought(spaghetti,john) :- shops(john), not  bought(steak,john).
bought(steak,john)     :- shops(john), not  bought(spaghetti,john).

bought(spaghetti,mary) :- shops(mary), not  bought(beans,mary).
bought(beans,mary)     :- shops(mary), not  bought(spaghetti,mary).

bought(tomato,carl) :- shops(carl), not  bought(onions,carl).
bought(onions,carl) :- shops(carl), not  bought(tomato,carl).

bought(steak,louis)  :- shops(louis), not  bought(onions,louis).
bought(onions,louis) :- shops(louis), not  bought(steak,louis).

bought(pizza,e)  :- shops(e), not  bought(nails,e), not  bought(onions,e).
bought(nails,e)  :- shops(e), not  bought(pizza,e), not  bought(onions,e).
bought(onions,e) :- shops(e), not  bought(pizza,e), not  bought(nails,e).

bought(spaghetti,f) :- shops(f), not  bought(beans,f),     not  bought(nails,f).
bought(beans,f)     :- shops(f), not  bought(spaghetti,f), not  bought(nails,f).
bought(nails,f)     :- shops(f), not  bought(spaghetti,f), not  bought(beans,f).

bought(tomato,g) :- shops(g), not  bought(onions,g), not  bought(socks,g).
bought(onions,g) :- shops(g), not  bought(tomato,g), not  bought(socks,g).
bought(socks,g)  :- shops(g), not  bought(tomato,g), not  bought(onions,g).

bought(tuna,h)     :- shops(h), not  bought(onions,h), not  bought(zucchini,h).
bought(onions,h)   :- shops(h), not  bought(tuna,h), not  bought(zucchini,h).
bought(zucchini,h) :- shops(h), not  bought(tuna,h), not  bought(onions,h).

bought(spaghetti):-  bought(spaghetti,_).
bought(steak):- bought(steak,_).
bought(beans):- bought(beans,_).
bought(onions):- bought(onions,_).
bought(tomato):- bought(tomato,_).
bought(pizza):- bought(pizza,_).
bought(nails):- bought(nails,_).
bought(socks):- bought(socks,_).
bought(tuna):- bought(tuna,_).
bought(zucchini):- bought(zucchini,_).


#learnable(shops(john)).
#learnable(shops(mary)).
#learnable(shops(carl)).
#learnable(shops(louis)).
#learnable(shops(e)).
#learnable(shops(f)).
#learnable(shops(g)).
#learnable(shops(h)).



:- bought(tuna),bought(spaghetti),bought(tomato).
:- bought(tomato),bought(onions),bought(beans).
:- bought(pizza),bought(tomato),bought(zucchini).
:- bought(spaghetti),bought(zucchini),bought(onions).
:- bought(spaghetti),bought(tomato),bought(zucchini).
:- bought(spaghetti),bought(onions),bought(socks).
:- bought(steak),bought(pizza),bought(socks).
:- bought(beans),bought(zucchini),bought(steak).
:- bought(nails),bought(spaghetti),bought(socks).

#positive(1,bought(onions)).
#negative(1,bought(pizza)).
#positive(1,bought(nails)).
#negative(1,bought(beans)).
#positive(1,bought(steak)).
#negative(1,bought(tomato)).

#negative(2,bought(steak)).
#positive(2,bought(tomato)).
#negative(2,bought(spaghetti)).
#negative(2,bought(socks)).
#positive(2,bought(onions)).
#negative(2,bought(tuna)).
#positive(2,bought(zucchini)).
#positive(2,bought(pizza)).
#negative(2,bought(nails)).

#positive(3,bought(zucchini)).
#negative(3,bought(onions)).
#positive(3,bought(spaghetti)).
#negative(3,bought(nails)).
#negative(3,bought(tuna)).
#negative(3,bought(pizza)).
#negative(3,bought(steak)).
#positive(3,bought(socks)).
#negative(3,bought(beans)).

#negative(4,bought(beans)).
#positive(4,bought(pizza)).
#positive(4,bought(onions)).
#positive(4,bought(steak)).

#negative(5,bought(onions)).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
