% Dataset shop of size 12 and 10 interpretations with seed 120

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


bought(beans,m)     :- shops(m), \+ bought(onions,m),\+ bought(steak,m), \+ bought(spaghetti,m), \+ bought(nails,m).
bought(onions,m)    :- shops(m), \+ bought(beans,m), \+ bought(steak,m), \+ bought(spaghetti,m), \+ bought(nails,m).
bought(steak,m)     :- shops(m), \+ bought(beans,m), \+ bought(onions,m),\+ bought(spaghetti,m), \+ bought(nails,m).
bought(spaghetti,m) :- shops(m), \+ bought(beans,m), \+ bought(onions,m),\+ bought(steak,m),     \+ bought(nails,m).
bought(nails,m)     :- shops(m), \+ bought(beans,m), \+ bought(onions,m),\+ bought(steak,m),     \+ bought(spaghetti,m).


bought(nails,n)     :- shops(n), \+ bought(tomato,n), \+ bought(steak,n), \+ bought(tuna,n), \+ bought(spaghetti,n).
bought(tomato,n)    :- shops(n), \+ bought(nails,n), \+ bought(steak,n), \+ bought(tuna,n), \+ bought(spaghetti,n).
bought(steak,n)     :- shops(n), \+ bought(nails,n), \+ bought(tomato,n), \+ bought(tuna,n), \+ bought(spaghetti,n).
bought(tuna,n)      :- shops(n), \+ bought(nails,n), \+ bought(tomato,n), \+ bought(steak,n), \+ bought(spaghetti,n).
bought(spaghetti,n) :- shops(n), \+ bought(nails,n), \+ bought(tomato,n), \+ bought(steak,n), \+ bought(tuna,n).


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
#learnable(shops(m)).
#learnable(shops(n)).



:- bought(salami),bought(zucchini).
:- bought(salami),bought(socks).
:- bought(steak),bought(nails).
:- bought(onions),bought(tomato).
:- bought(tomato),bought(nails).
:- bought(pizza),bought(beans).
:- bought(steak),bought(tape).
:- bought(pizza),bought(tomato).
:- bought(beans),bought(pizza).
:- bought(tomato),bought(pizza).

#positive(1,bought(onions)).
#positive(1,bought(zucchini)).
#negative(1,bought(socks)).
#positive(1,bought(tomato)).

#positive(2,bought(spaghetti)).
#positive(2,bought(tuna)).

#positive(3,bought(tape)).
#positive(3,bought(nails)).
#negative(3,bought(socks)).
#negative(3,bought(spaghetti)).
#positive(3,bought(pizza)).
#positive(3,bought(zucchini)).
#negative(3,bought(beans)).

#negative(4,bought(pizza)).
#negative(4,bought(tomato)).
#negative(4,bought(tuna)).
#negative(4,bought(zucchini)).
#negative(4,bought(socks)).
#positive(4,bought(beans)).
#positive(4,bought(salami)).
#negative(4,bought(onions)).
#negative(4,bought(nails)).
#positive(4,bought(tape)).

#positive(5,bought(spaghetti)).
#positive(5,bought(tomato)).

#negative(6,bought(beans)).
#positive(6,bought(spaghetti)).
#positive(6,bought(zucchini)).
#negative(6,bought(salami)).

#negative(7,bought(onions)).
#negative(7,bought(nails)).
#positive(7,bought(zucchini)).
#positive(7,bought(tomato)).
#negative(7,bought(beans)).
#positive(7,bought(steak)).
#positive(7,bought(tuna)).
#positive(7,bought(salami)).
#negative(7,bought(tape)).
#positive(7,bought(pizza)).

#positive(8,bought(tomato)).
#negative(8,bought(tuna)).
#negative(8,bought(onions)).
#positive(8,bought(spaghetti)).
#negative(8,bought(socks)).
#negative(8,bought(salami)).
#positive(8,bought(tape)).
#positive(8,bought(beans)).
#negative(8,bought(pizza)).
#positive(8,bought(steak)).
#negative(8,bought(nails)).

#positive(9,bought(beans)).

#negative(10,bought(tape)).
#positive(10,bought(tuna)).
#negative(10,bought(onions)).
#positive(10,bought(nails)).
#negative(10,bought(steak)).
#positive(10,bought(tomato)).
#positive(10,bought(pizza)).
#positive(10,bought(zucchini)).
#positive(10,bought(socks)).


#train(1,2,3,4,5,6,7,8,9,10).
#test(1,2,3,4,5,6,7,8,9,10).
