0.3 :: a1 ; 0.6 :: a2 ; 0.1 :: a3.
a :- a1.
na :- a2.
a :- a3, \+ na.
na :- a3, \+ a.

0.4 :: b1 ; 0.1 :: b2 ; 0.5 :: b3.
b :- b1.
nb :- b2.
b :- b3, \+ nb.
nb :- b3, \+ b.

q:- a.
q :- b, \+ r.
r :- b, \+ q.

query(q).