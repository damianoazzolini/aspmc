% Dataset shop of size 12 and 5 interpretations with seed 60

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



:- bought(beans),bought(pizza).
:- bought(onions),bought(tuna).
:- bought(socks),bought(pizza).
:- bought(spaghetti),bought(beans).
:- bought(salami),bought(beans).
:- bought(beans),bought(socks).

#positive(1,bought(onions)).

#positive(2,bought(nails)).

#negative(3,bought(beans)).
#positive(3,bought(tape)).
#positive(3,bought(onions)).

#negative(4,bought(zucchini)).
#negative(4,bought(salami)).
#negative(4,bought(tomato)).
#negative(4,bought(onions)).
#positive(4,bought(pizza)).
#positive(4,bought(spaghetti)).
#positive(4,bought(beans)).
#positive(4,bought(socks)).
#positive(4,bought(nails)).

#positive(5,bought(zucchini)).
#positive(5,bought(steak)).
#negative(5,bought(tuna)).
#positive(5,bought(beans)).


#train(1,2,3,4,5).
#test(1,2,3,4,5).
