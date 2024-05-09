% Dataset shop of size 8 and 10 interpretations with seed 80

bought(spaghetti,john) :- shops(john), \+ bought(steak,john).
bought(steak,john)     :- shops(john), \+ bought(spaghetti,john).

bought(spaghetti,mary) :- shops(mary), \+ bought(beans,mary).
bought(beans,mary)     :- shops(mary), \+ bought(spaghetti,mary).

bought(tomato,carl) :- shops(carl), \+ bought(onions,carl).
bought(onions,carl) :- shops(carl), \+ bought(tomato,carl).

bought(steak,louis)  :- shops(louis), \+ bought(onions,louis).
bought(onions,louis) :- shops(louis), \+ bought(steak,louis).

bought(pizza,e)  :- shops(e), \+ bought(nails,e), \+ bought(onions,e).
bought(nails,e)  :- shops(e), \+ bought(pizza,e), \+ bought(onions,e).
bought(onions,e) :- shops(e), \+ bought(pizza,e), \+ bought(nails,e).

bought(spaghetti,f) :- shops(f), \+ bought(beans,f),     \+ bought(nails,f).
bought(beans,f)     :- shops(f), \+ bought(spaghetti,f), \+ bought(nails,f).
bought(nails,f)     :- shops(f), \+ bought(spaghetti,f), \+ bought(beans,f).

bought(tomato,g) :- shops(g), \+ bought(onions,g), \+ bought(socks,g).
bought(onions,g) :- shops(g), \+ bought(tomato,g), \+ bought(socks,g).
bought(socks,g)  :- shops(g), \+ bought(tomato,g), \+ bought(onions,g).

bought(tuna,h)     :- shops(h), \+ bought(onions,h), \+ bought(zucchini,h).
bought(onions,h)   :- shops(h), \+ bought(tuna,h), \+ bought(zucchini,h).
bought(zucchini,h) :- shops(h), \+ bought(tuna,h), \+ bought(onions,h).

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



:- bought(nails),bought(pizza).
:- bought(pizza),bought(zucchini).
:- bought(nails),bought(pizza).
:- bought(spaghetti),bought(zucchini).
:- bought(nails),bought(onions).
:- bought(zucchini),bought(spaghetti).

#negative(1,bought(onions)).
#positive(1,bought(zucchini)).
#negative(1,bought(beans)).
#positive(1,bought(steak)).
#negative(1,bought(tomato)).
#negative(1,bought(tuna)).
#negative(1,bought(pizza)).

#negative(2,bought(pizza)).
#positive(2,bought(spaghetti)).

#negative(3,bought(tuna)).
#positive(3,bought(pizza)).
#negative(3,bought(spaghetti)).

#positive(4,bought(onions)).
#negative(4,bought(zucchini)).

#negative(5,bought(socks)).

#positive(6,bought(socks)).
#positive(6,bought(pizza)).
#positive(6,bought(spaghetti)).
#negative(6,bought(steak)).
#positive(6,bought(beans)).
#negative(6,bought(onions)).

#negative(7,bought(tomato)).
#positive(7,bought(spaghetti)).
#positive(7,bought(beans)).
#negative(7,bought(zucchini)).
#positive(7,bought(onions)).
#negative(7,bought(socks)).
#negative(7,bought(pizza)).
#negative(7,bought(tuna)).
#negative(7,bought(steak)).
#positive(7,bought(nails)).

#negative(8,bought(tuna)).
#positive(8,bought(zucchini)).
#negative(8,bought(socks)).
#positive(8,bought(steak)).
#positive(8,bought(onions)).

#negative(9,bought(tuna)).
#negative(9,bought(spaghetti)).
#negative(9,bought(socks)).
#positive(9,bought(beans)).
#negative(9,bought(steak)).
#negative(9,bought(zucchini)).
#positive(9,bought(pizza)).

#positive(10,bought(zucchini)).
#negative(10,bought(steak)).
#negative(10,bought(onions)).
#positive(10,bought(tuna)).
#positive(10,bought(socks)).
#positive(10,bought(spaghetti)).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
