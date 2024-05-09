% Dataset shop of size 10 and 15 interpretations with seed 150

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



:- bought(onions),bought(tomato),bought(nails).
:- bought(socks),bought(beans),bought(onions).
:- bought(nails),bought(steak),bought(pizza).
:- bought(pizza),bought(tomato),bought(zucchini).
:- bought(nails),bought(spaghetti),bought(onions).
:- bought(beans),bought(tuna),bought(nails).
:- bought(steak),bought(tape),bought(pizza).

#negative(1,bought(pizza)).
#negative(1,bought(spaghetti)).
#positive(1,bought(onions)).
#positive(1,bought(nails)).
#negative(1,bought(tape)).
#positive(1,bought(tuna)).
#negative(1,bought(zucchini)).
#negative(1,bought(socks)).

#negative(2,bought(tomato)).

#negative(3,bought(tomato)).
#positive(3,bought(pizza)).
#positive(3,bought(spaghetti)).
#positive(3,bought(socks)).
#positive(3,bought(beans)).
#positive(3,bought(steak)).
#positive(3,bought(salami)).
#negative(3,bought(tuna)).
#negative(3,bought(onions)).

#positive(4,bought(beans)).
#negative(4,bought(tape)).
#negative(4,bought(spaghetti)).
#positive(4,bought(tomato)).
#positive(4,bought(socks)).
#negative(4,bought(nails)).

#positive(5,bought(salami)).
#negative(5,bought(onions)).
#negative(5,bought(steak)).

#negative(6,bought(nails)).
#positive(6,bought(steak)).
#positive(6,bought(spaghetti)).
#negative(6,bought(zucchini)).
#positive(6,bought(onions)).
#negative(6,bought(socks)).
#negative(6,bought(beans)).
#negative(6,bought(salami)).

#negative(7,bought(onions)).
#positive(7,bought(pizza)).
#positive(7,bought(beans)).
#negative(7,bought(tuna)).
#negative(7,bought(zucchini)).
#positive(7,bought(spaghetti)).
#positive(7,bought(tape)).
#positive(7,bought(nails)).
#negative(7,bought(steak)).
#negative(7,bought(tomato)).

#negative(8,bought(tape)).
#positive(8,bought(steak)).
#positive(8,bought(zucchini)).
#negative(8,bought(pizza)).

#negative(9,bought(tape)).
#negative(9,bought(tomato)).
#positive(9,bought(steak)).

#negative(10,bought(socks)).
#negative(10,bought(spaghetti)).
#negative(10,bought(zucchini)).

#positive(11,bought(nails)).
#negative(11,bought(salami)).

#negative(12,bought(pizza)).
#negative(12,bought(socks)).
#negative(12,bought(tuna)).
#positive(12,bought(onions)).
#positive(12,bought(tape)).
#negative(12,bought(steak)).
#positive(12,bought(beans)).
#negative(12,bought(zucchini)).
#negative(12,bought(tomato)).

#positive(13,bought(tuna)).
#negative(13,bought(onions)).
#negative(13,bought(nails)).
#negative(13,bought(spaghetti)).
#positive(13,bought(pizza)).
#negative(13,bought(steak)).
#positive(13,bought(socks)).
#negative(13,bought(tape)).

#negative(14,bought(tomato)).
#negative(14,bought(spaghetti)).
#positive(14,bought(pizza)).
#positive(14,bought(socks)).

#positive(15,bought(socks)).
#negative(15,bought(tomato)).
#positive(15,bought(salami)).
#negative(15,bought(nails)).
#positive(15,bought(spaghetti)).
#positive(15,bought(zucchini)).
#negative(15,bought(pizza)).
#positive(15,bought(tape)).
#positive(15,bought(onions)).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15).
