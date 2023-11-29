int0_d_0:- d_00.
int0_d_1:- d_10.
int0_s_0:- s_00.
int0_s_1:- s_10.
int1_d_0:- \+d_00, d_01.
int1_d_1:- \+d_10, d_11.
int1_s_0:- \+s_00, s_01.
int1_s_1:- \+s_10, s_11.
int2_d_0:- \+d_00,\+d_01.
int2_d_1:- \+d_10,\+d_11.
int2_s_0:- \+s_00,\+s_01.
int2_s_1:- \+s_10,\+s_11.
not_d_00:- \+d_00.
not_d_01:- \+d_01.
not_d_10:- \+d_10.
not_d_11:- \+d_11.
not_s_00:- \+s_00.
not_s_01:- \+s_01.
not_s_10:- \+s_10.
not_s_11:- \+s_11.


problem_d(0):-int2_d_0.
problem_d(0):-int0_d_0.
problem_d(1):-int2_d_1.
problem_d(1):-int0_d_1.
problem_s(0):-int2_s_0.
problem_s(0):-int0_s_0.
problem_s(1):-int2_s_1.
problem_s(1):-int0_s_1.


0.4::predisposition_d.
0.6::predisposition_s.
0.111789647::d_00.
0.8664768991::d_01.
0.1817052937::s_00.
0.7811646487::s_01.
0.111789647::d_10.
0.8664768991::d_11.
0.1817052937::s_10.
0.7811646487::s_11.

qr:- \+ stroke(1), stroke(2).
qr:- stroke(1), \+ stroke(2).
qr:- \+ stroke(1),\+ stroke(2).

query(qr).

0.4::predisposition_d.
0.6::predisposition_s.

problem(P):- problem_d(P), predisposition_d.
problem(P):- problem_s(P), predisposition_s.

stroke(P) :- problem(P), \+ not_stroke(P).
not_stroke(P):- problem(P), \+ stroke(P).

   

% 1 person: not fb < 1 b
p1:- problem(1).
p1:- problem(2).


:- p1, \+ sp1.
% 2 person: not fb < 1 b
p2:- problem(1),problem(2).


:- p2, \+ sp1.
sp1:- stroke(1).
sp1:- stroke(2).
