% Ho provato a tradurre a mano il programma in cnf, ecco quello che ho trovato

% {bird(1)}.
% {bird(2)}.
% {bird(3)}.
% {bird(4)}.
% {fly(X)}:- bird(X).
% :- #count{X:fly(X),bird(X)} = FB, #count{X:bird(X)} = B, 10*FB<6*B.
% :- #count{X:fly(X),bird(X)} = FB, #count{X:bird(X)} = B, 10*FB>8*B.

% Codifica in cnf
% {bird(i)} non comporta vincoli

% {fly(X)}:- bird(X). comporta che se fly(X) è vero, allora bird(X) è vero

0.4::bird(1).
0.4::bird(2).
0.4::bird(3).
0.4::bird(4).

fly(X):- bird(X), \+ not_fly(X).
not_fly(X):- bird(X), \+ fly(X).

query(fly(1)).


% f(1)->b(1)
% f(2)->b(2)
% f(3)->b(3)
% f(4)->b(4)

% Primo vincolo: FB/B>=0.6 => FB>=B*0.6

% Caso B=4 => FB>=2.4 quindi almeno tre fly(i)

% b(1),b(2),b(3),b(4)->3f      3f indica che ci sono almento 3 fly
three_f:- bird(1), bird(2), bird(3), bird(4).

% 3f->f(123)vf(124)vf(134)vf(234)    f(abc) indica che sono veri almeno f(a), f(b), f(c)

% dubbio su questo
three_f:- f(123).
three_f:- f(124).
three_f:- f(134).
three_f:- f(234).

% f(123)->f(1) f(123)->f(2) f(123)->f(3)
% f(124)->f(1) f(124)->f(2) f(124)->f(4)
% f(134)->f(1) f(134)->f(3) f(134)->f(4)
% f(234)->f(2) f(234)->f(3) f(234)->f(4)
f(123):- fly(1), fly(2), fly(3).
f(124):- fly(1), fly(2), fly(4).
f(134):- fly(1), fly(3), fly(4).
f(234):- fly(2), fly(3), fly(4).

% Caso B=3 => FB>=1.8 quindi almeno due fly(i)

% b(1),b(2),b(3)->2f      2f indica che ci sono almento 2 fly
% b(1),b(2),b(4)->2f
% b(1),b(3),b(4)->2f
% b(2),b(3),b(4)->2f

two_f:- bird(1), bird(2), bird(3).
two_f:- bird(1), bird(2), bird(4).
two_f:- bird(1), bird(3), bird(4).
two_f:- bird(2), bird(3), bird(4).

% 2f->f(12)vf(13)vf(14)vf(23)vf(24)vf(34)

two_f:- f(12).
two_f:- f(13).
two_f:- f(14).
two_f:- f(23).
two_f:- f(24).
two_f:- f(34).

% f(12)->f(1)
% f(12)->f(2)
f(12):- fly(1), fly(2).
f(13):- fly(1), fly(3).
f(14):- fly(1), fly(4).

% f(13)->f(1)
% f(13)->f(3)

% f(12)->f(1)
% f(14)->f(4)

% f(23)->f(2)
% f(23)->f(3)
f(23):- fly(2), fly(3).
f(24):- fly(2), fly(4).

% f(24)->f(2)
% f(24)->f(4)

% f(34)->f(3)
% f(34)->f(4)
f(34):- fly(3), fly(4).

% Caso B=2 => FB>=1.2 quindi almeno due fly(i)

% b(1),b(2)->2f
% b(1),b(3)->2f
% b(1),b(4)->2f
% b(2),b(3)->2f
% b(2),b(4)->2f
% b(3),b(4)->2f
two_f:- bird(1), bird(2).
two_f:- bird(1), bird(3).
two_f:- bird(1), bird(4).
two_f:- bird(2), bird(3).
two_f:- bird(2), bird(4).
two_f:- bird(3), bird(4).

% Caso B=1 => FB>=0.6 quindi almeno un fly(i)

one_f:- bird(1).
one_f:- bird(2).
one_f:- bird(3).
one_f:- bird(4).
% b(1)->1f
% b(2)->1f
% b(3)->1f
% b(4)->1f
one_f:- fly(1).
one_f:- fly(2).
one_f:- fly(3).
one_f:- fly(4).

% 1f->f(1)vf(2)vf(3)vf(4)

% Caso B=0 => FB>=0 quindi almeno 0 fly(i) => nessun vincolo