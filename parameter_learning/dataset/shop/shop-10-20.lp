% Dataset shop of size 10 and 20 interpretations with seed 200

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


bought(salami,i)   :- shops(i), \+ bought(onions,i), \+ bought(zucchini,i), \+ bought(tape,i) .
bought(onions,i)   :- shops(i), \+ bought(salami,i), \+ bought(zucchini,i), \+ bought(tape,i).
bought(zucchini,i) :- shops(i), \+ bought(salami,i), \+ bought(onions,i),   \+ bought(tape,i).
bought(tape,i)     :- shops(i), \+ bought(salami,i), \+ bought(onions,i),   \+ bought(zucchini,i).

bought(nails,l)     :- shops(l), \+ bought(tuna,l),  \+ bought(steak,l), \+ bought(spaghetti,l).
bought(tuna,l)      :- shops(l), \+ bought(nails,l), \+ bought(steak,l), \+ bought(spaghetti,l).
bought(steak,l)     :- shops(l), \+ bought(nails,l), \+ bought(tuna,l),  \+ bought(spaghetti,l).
bought(spaghetti,l) :- shops(l), \+ bought(nails,l), \+ bought(tuna,l),  \+ bought(steak,l).


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
bought(salami):- bought(salami,_).
bought(tape):- bought(tape,_).


#learnable(shops(john)).
#learnable(shops(mary)).
#learnable(shops(carl)).
#learnable(shops(louis)).
#learnable(shops(e)).
#learnable(shops(f)).
#learnable(shops(g)).
#learnable(shops(h)).
#learnable(shops(i)).
#learnable(shops(l)).



:- bought(tape),bought(spaghetti),bought(onions).
:- bought(zucchini),bought(tomato),bought(spaghetti).

#positive(1,bought(socks)).
#negative(1,bought(spaghetti)).
#negative(1,bought(zucchini)).
#positive(1,bought(tomato)).
#negative(1,bought(beans)).
#negative(1,bought(salami)).
#negative(1,bought(tape)).
#negative(1,bought(nails)).
#negative(1,bought(tuna)).
#negative(1,bought(pizza)).
#positive(1,bought(steak)).
#negative(1,bought(onions)).

#negative(2,bought(nails)).
#positive(2,bought(steak)).
#positive(2,bought(salami)).
#positive(2,bought(socks)).

#positive(3,bought(tuna)).
#positive(3,bought(tape)).
#positive(3,bought(salami)).

#positive(4,bought(beans)).
#positive(4,bought(tuna)).
#negative(4,bought(pizza)).
#negative(4,bought(tomato)).
#positive(4,bought(zucchini)).
#positive(4,bought(socks)).

#positive(5,bought(tomato)).
#positive(5,bought(nails)).

#positive(6,bought(beans)).

#positive(7,bought(tape)).
#positive(7,bought(spaghetti)).
#negative(7,bought(nails)).
#positive(7,bought(socks)).
#positive(7,bought(steak)).

#negative(8,bought(pizza)).
#negative(8,bought(onions)).
#positive(8,bought(salami)).
#negative(8,bought(tuna)).
#negative(8,bought(tape)).
#negative(8,bought(spaghetti)).
#positive(8,bought(nails)).
#positive(8,bought(tomato)).
#negative(8,bought(steak)).
#positive(8,bought(socks)).
#negative(8,bought(beans)).

#negative(9,bought(socks)).
#negative(9,bought(tuna)).
#negative(9,bought(nails)).

#positive(10,bought(zucchini)).
#negative(10,bought(tuna)).
#negative(10,bought(spaghetti)).
#negative(10,bought(salami)).
#positive(10,bought(beans)).
#positive(10,bought(tape)).
#negative(10,bought(socks)).
#positive(10,bought(nails)).

#positive(11,bought(nails)).
#positive(11,bought(spaghetti)).

#positive(12,bought(onions)).
#positive(12,bought(zucchini)).
#positive(12,bought(tomato)).
#negative(12,bought(beans)).
#positive(12,bought(tape)).
#negative(12,bought(salami)).
#positive(12,bought(tuna)).
#negative(12,bought(nails)).
#negative(12,bought(spaghetti)).
#positive(12,bought(socks)).
#positive(12,bought(pizza)).

#negative(13,bought(tape)).
#negative(13,bought(spaghetti)).
#negative(13,bought(onions)).
#negative(13,bought(steak)).
#negative(13,bought(pizza)).
#positive(13,bought(salami)).
#positive(13,bought(beans)).
#positive(13,bought(nails)).
#negative(13,bought(tuna)).
#negative(13,bought(tomato)).
#negative(13,bought(zucchini)).

#negative(14,bought(nails)).
#positive(14,bought(salami)).
#positive(14,bought(socks)).
#negative(14,bought(beans)).
#positive(14,bought(zucchini)).
#positive(14,bought(steak)).
#negative(14,bought(tomato)).
#positive(14,bought(tape)).
#positive(14,bought(onions)).

#negative(15,bought(socks)).
#negative(15,bought(zucchini)).
#negative(15,bought(pizza)).
#negative(15,bought(onions)).
#positive(15,bought(salami)).
#negative(15,bought(tomato)).
#positive(15,bought(tuna)).
#negative(15,bought(tape)).

#positive(16,bought(spaghetti)).
#positive(16,bought(salami)).

#positive(17,bought(pizza)).
#negative(17,bought(steak)).
#positive(17,bought(onions)).
#positive(17,bought(socks)).
#negative(17,bought(tape)).
#positive(17,bought(beans)).
#positive(17,bought(spaghetti)).
#positive(17,bought(zucchini)).
#negative(17,bought(tomato)).

#positive(18,bought(tuna)).
#positive(18,bought(tape)).
#positive(18,bought(pizza)).
#negative(18,bought(tomato)).
#negative(18,bought(onions)).
#positive(18,bought(nails)).
#positive(18,bought(salami)).
#positive(18,bought(beans)).
#negative(18,bought(zucchini)).
#positive(18,bought(spaghetti)).
#negative(18,bought(socks)).
#positive(18,bought(steak)).

#negative(19,bought(tape)).
#positive(19,bought(salami)).

#negative(20,bought(beans)).
#positive(20,bought(tomato)).
#positive(20,bought(onions)).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
