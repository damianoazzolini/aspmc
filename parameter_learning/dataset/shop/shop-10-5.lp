% Dataset shop of size 10 and 5 interpretations with seed 50

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



:- bought(pizza),bought(tape),bought(onions).
:- bought(tape),bought(socks),bought(pizza).
:- bought(steak),bought(zucchini),bought(nails).
:- bought(onions),bought(tape),bought(zucchini).
:- bought(steak),bought(onions),bought(socks).
:- bought(steak),bought(nails),bought(socks).
:- bought(onions),bought(tomato),bought(steak).
:- bought(pizza),bought(salami),bought(tape).
:- bought(nails),bought(tape),bought(steak).

#positive(1,bought(tape)).
#positive(1,bought(pizza)).

#negative(2,bought(nails)).
#negative(2,bought(pizza)).
#positive(2,bought(tuna)).
#negative(2,bought(steak)).
#negative(2,bought(tape)).
#positive(2,bought(zucchini)).
#negative(2,bought(beans)).
#positive(2,bought(onions)).
#negative(2,bought(spaghetti)).
#positive(2,bought(salami)).
#positive(2,bought(tomato)).

#negative(3,bought(tuna)).
#positive(3,bought(zucchini)).
#negative(3,bought(beans)).
#negative(3,bought(tape)).
#positive(3,bought(nails)).
#negative(3,bought(steak)).
#positive(3,bought(spaghetti)).
#negative(3,bought(socks)).
#negative(3,bought(tomato)).
#negative(3,bought(salami)).
#negative(3,bought(onions)).

#negative(4,bought(pizza)).
#negative(4,bought(zucchini)).
#positive(4,bought(steak)).
#positive(4,bought(nails)).

#negative(5,bought(zucchini)).
#negative(5,bought(nails)).
#negative(5,bought(socks)).
#positive(5,bought(spaghetti)).
#negative(5,bought(steak)).
#positive(5,bought(salami)).
#negative(5,bought(beans)).
#positive(5,bought(pizza)).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
