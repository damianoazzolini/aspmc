int0_a:- a0.
int1_a:- \+ a0, a1.
int2_a:- \+ a0,\+ a1, a2.
int3_a:- \+ a0,\+ a1,\+ a2, a3.
int4_a:- \+ a0,\+ a1,\+ a2,\+ a3, a4.
int5_a:- \+ a0,\+ a1,\+ a2,\+ a3,\+ a4, a5.
int6_a:- \+ a0,\+ a1,\+ a2,\+ a3,\+ a4,\+ a5, a6.
int7_a:- \+ a0,\+ a1,\+ a2,\+ a3,\+ a4,\+ a5,\+ a6, a7.
int8_a:- \+ a0,\+ a1,\+ a2,\+ a3,\+ a4,\+ a5,\+ a6,\+ a7, a8.
int9_a:- \+ a0,\+ a1,\+ a2,\+ a3,\+ a4,\+ a5,\+ a6,\+ a7,\+ a8.
not_a0:- \+ a0.
not_a1:- \+ a1.
not_a2:- \+ a2.
not_a3:- \+ a3.
not_a4:- \+ a4.
not_a5:- \+ a5.
not_a6:- \+ a6.
not_a7:- \+ a7.
not_a8:- \+ a8.
not_b:- \+ b.
nq:- \+ asdf.
q0:-int1_a, int0_a,\+ q1.
q0:-int1_a, int1_a,\+ q1.
q0:-int2_a, int0_a,\+ q1.
q0:-int2_a, int1_a,\+ q1.
q0:-int2_a, int2_a,\+ q1.
q0:-int2_a, int3_a,\+ q1.
q0:-int3_a, int0_a,\+ q1.
q0:-int3_a, int1_a,\+ q1.
q0:-int3_a, int2_a,\+ q1.
q0:-int3_a, int3_a,\+ q1.
q0:-int4_a, int0_a,\+ q1.
q0:-int4_a, int1_a,\+ q1.
q0:-int4_a, int2_a,\+ q1.
q0:-int4_a, int3_a,\+ q1.
q0:-int4_a, int4_a,\+ q1.
q0:-int4_a, int5_a,\+ q1.
q0:-int5_a, int0_a,\+ q1.
q0:-int5_a, int1_a,\+ q1.
q0:-int5_a, int2_a,\+ q1.
q0:-int5_a, int3_a,\+ q1.
q0:-int5_a, int4_a,\+ q1.
q0:-int5_a, int5_a,\+ q1.
q0:-int6_a, int0_a,\+ q1.
q0:-int6_a, int1_a,\+ q1.
q0:-int6_a, int2_a,\+ q1.
q0:-int6_a, int3_a,\+ q1.
q0:-int6_a, int4_a,\+ q1.
q0:-int6_a, int5_a,\+ q1.
q0:-int6_a, int6_a,\+ q1.
q0:-int7_a, int0_a,\+ q1.
q0:-int7_a, int1_a,\+ q1.
q0:-int7_a, int2_a,\+ q1.
q0:-int7_a, int3_a,\+ q1.
q0:-int7_a, int4_a,\+ q1.
q0:-int7_a, int5_a,\+ q1.
q0:-int7_a, int6_a,\+ q1.
q0:-int8_a, int0_a,\+ q1.
q0:-int8_a, int1_a,\+ q1.
q0:-int8_a, int2_a,\+ q1.
q0:-int8_a, int3_a,\+ q1.
q0:-int8_a, int4_a,\+ q1.
q0:-int8_a, int5_a,\+ q1.
q0:-int8_a, int6_a,\+ q1.
q0:-int9_a, int0_a,\+ q1.
q0:-int9_a, int1_a,\+ q1.
q0:-int9_a, int2_a,\+ q1.
q0:-int9_a, int3_a,\+ q1.
q0:-int9_a, int4_a,\+ q1.
q0:-int9_a, int5_a,\+ q1.
q0:-int9_a, int6_a,\+ q1.
q0:-b,int1_a, int0_a.
q0:-b,int1_a, int1_a.
q0:-b,int1_a, int2_a.
q0:-b,int2_a, int0_a.
q0:-b,int2_a, int1_a.
q0:-b,int2_a, int2_a.
q0:-b,int3_a, int0_a.
q0:-b,int3_a, int1_a.
q0:-b,int3_a, int2_a.
q0:-b,int3_a, int3_a.
q0:-b,int3_a, int4_a.
q0:-b,int4_a, int0_a.
q0:-b,int4_a, int1_a.
q0:-b,int4_a, int2_a.
q0:-b,int4_a, int3_a.
q0:-b,int4_a, int4_a.
q0:-b,int5_a, int0_a.
q0:-b,int5_a, int1_a.
q0:-b,int5_a, int2_a.
q0:-b,int5_a, int3_a.
q0:-b,int5_a, int4_a.
q0:-b,int5_a, int5_a.
q0:-b,int5_a, int6_a.
q0:-b,int5_a, int7_a.
q0:-b,int6_a, int0_a.
q0:-b,int6_a, int1_a.
q0:-b,int6_a, int2_a.
q0:-b,int6_a, int3_a.
q0:-b,int6_a, int4_a.
q0:-b,int6_a, int5_a.
q0:-b,int6_a, int6_a.
q0:-b,int6_a, int7_a.
q0:-b,int7_a, int0_a.
q0:-b,int7_a, int1_a.
q0:-b,int7_a, int2_a.
q0:-b,int7_a, int3_a.
q0:-b,int7_a, int4_a.
q0:-b,int7_a, int5_a.
q0:-b,int7_a, int6_a.
q0:-b,int7_a, int7_a.
q0:-b,int8_a, int0_a.
q0:-b,int8_a, int1_a.
q0:-b,int8_a, int2_a.
q0:-b,int8_a, int3_a.
q0:-b,int8_a, int4_a.
q0:-b,int8_a, int5_a.
q0:-b,int8_a, int6_a.
q0:-b,int8_a, int7_a.
q0:-b,int8_a, int8_a.
q0:-b,int9_a, int0_a.
q0:-b,int9_a, int1_a.
q0:-b,int9_a, int2_a.
q0:-b,int9_a, int3_a.
q0:-b,int9_a, int4_a.
q0:-b,int9_a, int5_a.
q0:-b,int9_a, int6_a.
q0:-b,int9_a, int7_a.
q0:-b,int9_a, int8_a.
q1:-int1_a, int0_a,\+ q0.
q1:-int1_a, int1_a,\+ q0.
q1:-int2_a, int0_a,\+ q0.
q1:-int2_a, int1_a,\+ q0.
q1:-int2_a, int2_a,\+ q0.
q1:-int2_a, int3_a,\+ q0.
q1:-int3_a, int0_a,\+ q0.
q1:-int3_a, int1_a,\+ q0.
q1:-int3_a, int2_a,\+ q0.
q1:-int3_a, int3_a,\+ q0.
q1:-int4_a, int0_a,\+ q0.
q1:-int4_a, int1_a,\+ q0.
q1:-int4_a, int2_a,\+ q0.
q1:-int4_a, int3_a,\+ q0.
q1:-int4_a, int4_a,\+ q0.
q1:-int4_a, int5_a,\+ q0.
q1:-int5_a, int0_a,\+ q0.
q1:-int5_a, int1_a,\+ q0.
q1:-int5_a, int2_a,\+ q0.
q1:-int5_a, int3_a,\+ q0.
q1:-int5_a, int4_a,\+ q0.
q1:-int5_a, int5_a,\+ q0.
q1:-int6_a, int0_a,\+ q0.
q1:-int6_a, int1_a,\+ q0.
q1:-int6_a, int2_a,\+ q0.
q1:-int6_a, int3_a,\+ q0.
q1:-int6_a, int4_a,\+ q0.
q1:-int6_a, int5_a,\+ q0.
q1:-int6_a, int6_a,\+ q0.
q1:-int7_a, int0_a,\+ q0.
q1:-int7_a, int1_a,\+ q0.
q1:-int7_a, int2_a,\+ q0.
q1:-int7_a, int3_a,\+ q0.
q1:-int7_a, int4_a,\+ q0.
q1:-int7_a, int5_a,\+ q0.
q1:-int7_a, int6_a,\+ q0.
q1:-int8_a, int0_a,\+ q0.
q1:-int8_a, int1_a,\+ q0.
q1:-int8_a, int2_a,\+ q0.
q1:-int8_a, int3_a,\+ q0.
q1:-int8_a, int4_a,\+ q0.
q1:-int8_a, int5_a,\+ q0.
q1:-int8_a, int6_a,\+ q0.
q1:-int9_a, int0_a,\+ q0.
q1:-int9_a, int1_a,\+ q0.
q1:-int9_a, int2_a,\+ q0.
q1:-int9_a, int3_a,\+ q0.
q1:-int9_a, int4_a,\+ q0.
q1:-int9_a, int5_a,\+ q0.
q1:-int9_a, int6_a,\+ q0.
q:- asdf.
0.400000::b.
0.001350::a0.
0.000122::a1.
0.001251::a2.
0.001016::a3.
0.025360::a4.
0.015992::a5.
0.150805::a6.
0.072912::a7.
0.004092::a8.

query(q0).