% Dataset shop of size 12 and 5 interpretations with seed 60

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


bought(salami,i)   :- shops(i), not  bought(onions,i), not  bought(zucchini,i), not  bought(tape,i) .
bought(onions,i)   :- shops(i), not  bought(salami,i), not  bought(zucchini,i), not  bought(tape,i).
bought(zucchini,i) :- shops(i), not  bought(salami,i), not  bought(onions,i),   not  bought(tape,i).
bought(tape,i)     :- shops(i), not  bought(salami,i), not  bought(onions,i),   not  bought(zucchini,i).

bought(nails,l)     :- shops(l), not  bought(tuna,l),  not  bought(steak,l), not  bought(spaghetti,l).
bought(tuna,l)      :- shops(l), not  bought(nails,l), not  bought(steak,l), not  bought(spaghetti,l).
bought(steak,l)     :- shops(l), not  bought(nails,l), not  bought(tuna,l),  not  bought(spaghetti,l).
bought(spaghetti,l) :- shops(l), not  bought(nails,l), not  bought(tuna,l),  not  bought(steak,l).


bought(beans,m)     :- shops(m), not  bought(onions,m),not  bought(steak,m), not  bought(spaghetti,m), not  bought(nails,m).
bought(onions,m)    :- shops(m), not  bought(beans,m), not  bought(steak,m), not  bought(spaghetti,m), not  bought(nails,m).
bought(steak,m)     :- shops(m), not  bought(beans,m), not  bought(onions,m),not  bought(spaghetti,m), not  bought(nails,m).
bought(spaghetti,m) :- shops(m), not  bought(beans,m), not  bought(onions,m),not  bought(steak,m),     not  bought(nails,m).
bought(nails,m)     :- shops(m), not  bought(beans,m), not  bought(onions,m),not  bought(steak,m),     not  bought(spaghetti,m).


bought(nails,n)     :- shops(n), not  bought(tomato,n), not  bought(steak,n), not  bought(tuna,n), not  bought(spaghetti,n).
bought(tomato,n)    :- shops(n), not  bought(nails,n), not  bought(steak,n), not  bought(tuna,n), not  bought(spaghetti,n).
bought(steak,n)     :- shops(n), not  bought(nails,n), not  bought(tomato,n), not  bought(tuna,n), not  bought(spaghetti,n).
bought(tuna,n)      :- shops(n), not  bought(nails,n), not  bought(tomato,n), not  bought(steak,n), not  bought(spaghetti,n).
bought(spaghetti,n) :- shops(n), not  bought(nails,n), not  bought(tomato,n), not  bought(steak,n), not  bought(tuna,n).


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
