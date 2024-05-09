% Dataset shop of size 10 and 10 interpretations with seed 100

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



:- bought(beans),bought(socks).
:- bought(tape),bought(pizza).
:- bought(nails),bought(zucchini).
:- bought(steak),bought(zucchini).

#positive(1,bought(steak)).
#negative(1,bought(pizza)).

#negative(2,bought(onions)).
#positive(2,bought(pizza)).
#positive(2,bought(tomato)).
#negative(2,bought(beans)).
#negative(2,bought(zucchini)).
#positive(2,bought(socks)).
#negative(2,bought(steak)).
#positive(2,bought(salami)).
#negative(2,bought(tape)).
#positive(2,bought(tuna)).
#negative(2,bought(spaghetti)).

#positive(3,bought(beans)).
#negative(3,bought(salami)).
#positive(3,bought(onions)).
#positive(3,bought(pizza)).
#negative(3,bought(zucchini)).
#positive(3,bought(socks)).
#positive(3,bought(spaghetti)).

#positive(4,bought(zucchini)).
#positive(4,bought(tuna)).
#negative(4,bought(tape)).
#positive(4,bought(pizza)).
#positive(4,bought(nails)).
#positive(4,bought(onions)).
#positive(4,bought(spaghetti)).
#negative(4,bought(socks)).
#positive(4,bought(salami)).
#positive(4,bought(tomato)).
#negative(4,bought(beans)).
#negative(4,bought(steak)).

#positive(5,bought(tape)).
#positive(5,bought(spaghetti)).
#positive(5,bought(tomato)).
#positive(5,bought(salami)).
#negative(5,bought(socks)).

#negative(6,bought(tape)).

#negative(7,bought(tuna)).
#negative(7,bought(salami)).
#positive(7,bought(nails)).
#negative(7,bought(steak)).

#positive(8,bought(beans)).
#positive(8,bought(tape)).
#negative(8,bought(zucchini)).
#negative(8,bought(tuna)).
#positive(8,bought(salami)).
#positive(8,bought(spaghetti)).
#negative(8,bought(onions)).
#negative(8,bought(steak)).
#negative(8,bought(tomato)).
#positive(8,bought(pizza)).
#negative(8,bought(socks)).
#negative(8,bought(nails)).

#negative(9,bought(tape)).
#positive(9,bought(onions)).
#negative(9,bought(pizza)).
#positive(9,bought(tomato)).
#positive(9,bought(steak)).
#negative(9,bought(tuna)).

#positive(10,bought(tomato)).
#negative(10,bought(steak)).
#negative(10,bought(spaghetti)).
#negative(10,bought(socks)).
#negative(10,bought(tuna)).
#positive(10,bought(beans)).
#negative(10,bought(salami)).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
