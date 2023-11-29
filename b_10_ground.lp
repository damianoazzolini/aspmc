int0_ac1:- ac10.
int1_ac1:- \+ ac10, ac11.
int2_ac1:- \+ ac10,\+ ac11.
not_ac10:- \+ ac10.
not_ac11:- \+ ac11.
not_ad0:- \+ ad0.
nq:- \+ asdf.
q0:-int0_ac1,ad0.
q0:-int0_ac1,\+ q1.
q0:-int1_ac1,ad0.
q1:-int0_ac1,\+ q0.
q:- asdf.
0.5::ad0.
0.6914624613::ac10.
0.2157724042::ac11.
query(q0).