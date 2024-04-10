[0.3,0.4]::a.
[0.4,0.9]::b.
q:- a.
q :- b, not r.
r :- b, not q.

#query(q).