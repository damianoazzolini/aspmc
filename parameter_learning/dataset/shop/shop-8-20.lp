% Dataset shop of size 8 and 20 interpretations with seed 160

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



:- bought(nails),bought(beans),bought(socks).
:- bought(tuna),bought(socks),bought(onions).
:- bought(nails),bought(tuna),bought(spaghetti).

#negative(1,bought(steak)).
#negative(1,bought(tomato)).
#positive(1,bought(tuna)).
#negative(1,bought(onions)).
#positive(1,bought(pizza)).

#negative(2,bought(onions)).
#negative(2,bought(pizza)).
#negative(2,bought(steak)).
#negative(2,bought(beans)).
#positive(2,bought(nails)).

#positive(3,bought(nails)).

#positive(4,bought(spaghetti)).
#positive(4,bought(zucchini)).
#positive(4,bought(steak)).
#positive(4,bought(nails)).
#negative(4,bought(tuna)).
#negative(4,bought(socks)).

#positive(5,bought(beans)).
#positive(5,bought(pizza)).
#positive(5,bought(steak)).
#negative(5,bought(socks)).
#positive(5,bought(spaghetti)).
#negative(5,bought(zucchini)).
#negative(5,bought(tomato)).

#negative(6,bought(tuna)).

#positive(7,bought(onions)).
#negative(7,bought(tuna)).
#negative(7,bought(spaghetti)).

#positive(8,bought(socks)).
#positive(8,bought(zucchini)).

#negative(9,bought(spaghetti)).
#negative(9,bought(onions)).
#positive(9,bought(beans)).
#positive(9,bought(tuna)).
#positive(9,bought(socks)).
#negative(9,bought(tomato)).
#negative(9,bought(zucchini)).
#negative(9,bought(pizza)).
#negative(9,bought(nails)).

#positive(10,bought(socks)).
#positive(10,bought(tomato)).
#negative(10,bought(onions)).
#positive(10,bought(zucchini)).
#positive(10,bought(tuna)).

#positive(11,bought(steak)).
#negative(11,bought(pizza)).
#negative(11,bought(nails)).
#negative(11,bought(spaghetti)).

#negative(12,bought(steak)).
#positive(12,bought(spaghetti)).
#positive(12,bought(nails)).

#negative(13,bought(socks)).
#positive(13,bought(zucchini)).
#positive(13,bought(nails)).

#negative(14,bought(tuna)).
#negative(14,bought(onions)).
#negative(14,bought(zucchini)).
#negative(14,bought(steak)).

#positive(15,bought(nails)).
#negative(15,bought(onions)).
#positive(15,bought(pizza)).
#positive(15,bought(socks)).
#negative(15,bought(steak)).
#negative(15,bought(spaghetti)).
#negative(15,bought(tomato)).

#positive(16,bought(pizza)).
#negative(16,bought(zucchini)).

#negative(17,bought(socks)).
#positive(17,bought(nails)).
#positive(17,bought(zucchini)).
#negative(17,bought(onions)).
#positive(17,bought(tomato)).

#negative(18,bought(socks)).
#negative(18,bought(spaghetti)).
#negative(18,bought(tuna)).
#positive(18,bought(tomato)).
#positive(18,bought(nails)).
#positive(18,bought(pizza)).
#negative(18,bought(steak)).
#positive(18,bought(zucchini)).
#positive(18,bought(beans)).

#positive(19,bought(steak)).
#negative(19,bought(tomato)).
#negative(19,bought(socks)).
#negative(19,bought(pizza)).
#positive(19,bought(nails)).
#positive(19,bought(beans)).
#positive(19,bought(tuna)).
#negative(19,bought(zucchini)).
#negative(19,bought(onions)).
#negative(19,bought(spaghetti)).

#negative(20,bought(beans)).
#negative(20,bought(pizza)).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
