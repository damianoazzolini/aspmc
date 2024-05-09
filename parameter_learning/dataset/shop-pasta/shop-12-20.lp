% Dataset shop of size 12 and 20 interpretations with seed 240

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



:- bought(pizza),bought(beans).
:- bought(zucchini),bought(tuna).
:- bought(salami),bought(pizza).
:- bought(spaghetti),bought(nails).
:- bought(steak),bought(tomato).
:- bought(spaghetti),bought(nails).
:- bought(socks),bought(tomato).
:- bought(salami),bought(tuna).
:- bought(zucchini),bought(salami).
:- bought(beans),bought(zucchini).
:- bought(onions),bought(tomato).

#negative(1,bought(spaghetti)).
#positive(1,bought(zucchini)).
#positive(1,bought(socks)).
#negative(1,bought(beans)).
#negative(1,bought(nails)).
#positive(1,bought(pizza)).
#negative(1,bought(salami)).
#negative(1,bought(onions)).
#positive(1,bought(steak)).

#negative(2,bought(salami)).
#negative(2,bought(spaghetti)).
#negative(2,bought(beans)).
#negative(2,bought(zucchini)).
#negative(2,bought(socks)).
#negative(2,bought(pizza)).
#positive(2,bought(onions)).
#positive(2,bought(nails)).
#negative(2,bought(tape)).
#positive(2,bought(tuna)).

#positive(3,bought(pizza)).
#negative(3,bought(tomato)).
#positive(3,bought(salami)).
#positive(3,bought(onions)).
#positive(3,bought(spaghetti)).
#positive(3,bought(nails)).
#negative(3,bought(zucchini)).
#positive(3,bought(tape)).
#negative(3,bought(tuna)).

#negative(4,bought(zucchini)).
#negative(4,bought(nails)).
#positive(4,bought(steak)).
#negative(4,bought(pizza)).
#negative(4,bought(tomato)).
#positive(4,bought(socks)).

#negative(5,bought(nails)).
#negative(5,bought(salami)).
#negative(5,bought(tomato)).
#positive(5,bought(zucchini)).
#negative(5,bought(pizza)).
#negative(5,bought(tape)).
#negative(5,bought(socks)).

#positive(6,bought(zucchini)).
#negative(6,bought(nails)).
#negative(6,bought(tape)).
#positive(6,bought(salami)).
#positive(6,bought(steak)).
#negative(6,bought(onions)).
#negative(6,bought(tuna)).
#positive(6,bought(spaghetti)).
#positive(6,bought(pizza)).

#positive(7,bought(salami)).
#positive(7,bought(tomato)).
#positive(7,bought(spaghetti)).

#negative(8,bought(steak)).
#negative(8,bought(tomato)).
#positive(8,bought(salami)).
#negative(8,bought(tuna)).
#positive(8,bought(tape)).
#positive(8,bought(nails)).

#positive(9,bought(onions)).
#negative(9,bought(zucchini)).
#positive(9,bought(beans)).
#negative(9,bought(spaghetti)).
#positive(9,bought(tuna)).
#negative(9,bought(pizza)).

#positive(10,bought(spaghetti)).
#negative(10,bought(onions)).

#negative(11,bought(tape)).
#negative(11,bought(tuna)).
#negative(11,bought(spaghetti)).
#negative(11,bought(salami)).
#negative(11,bought(zucchini)).
#negative(11,bought(pizza)).
#positive(11,bought(steak)).
#positive(11,bought(tomato)).
#positive(11,bought(beans)).
#positive(11,bought(nails)).
#positive(11,bought(socks)).

#positive(12,bought(tomato)).

#positive(13,bought(beans)).
#positive(13,bought(salami)).
#negative(13,bought(zucchini)).
#positive(13,bought(pizza)).
#positive(13,bought(tuna)).
#negative(13,bought(tomato)).
#positive(13,bought(steak)).
#positive(13,bought(spaghetti)).
#positive(13,bought(nails)).
#positive(13,bought(onions)).

#positive(14,bought(spaghetti)).

#negative(15,bought(spaghetti)).
#negative(15,bought(tuna)).
#negative(15,bought(salami)).
#positive(15,bought(tomato)).
#positive(15,bought(steak)).
#positive(15,bought(nails)).

#positive(16,bought(tomato)).

#negative(17,bought(spaghetti)).
#negative(17,bought(onions)).
#negative(17,bought(tomato)).

#positive(18,bought(tuna)).
#negative(18,bought(nails)).
#positive(18,bought(beans)).
#negative(18,bought(spaghetti)).
#positive(18,bought(socks)).
#positive(18,bought(onions)).
#positive(18,bought(pizza)).
#negative(18,bought(tomato)).
#negative(18,bought(zucchini)).
#negative(18,bought(salami)).

#negative(19,bought(salami)).
#positive(19,bought(nails)).
#negative(19,bought(socks)).
#positive(19,bought(zucchini)).
#positive(19,bought(onions)).
#positive(19,bought(tomato)).
#negative(19,bought(steak)).
#negative(19,bought(pizza)).
#negative(19,bought(tuna)).
#positive(19,bought(beans)).
#negative(19,bought(tape)).

#negative(20,bought(socks)).
#positive(20,bought(steak)).
#negative(20,bought(beans)).
#negative(20,bought(zucchini)).
#positive(20,bought(pizza)).
#positive(20,bought(tuna)).
#positive(20,bought(salami)).
#negative(20,bought(spaghetti)).
#positive(20,bought(onions)).
#negative(20,bought(tape)).
#positive(20,bought(tomato)).
#positive(20,bought(nails)).


#train(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
#test(1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20).
