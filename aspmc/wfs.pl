% per vedere la differenza con ASP e il fatto che la disgiunzione
% nel body non è come mi aspetto.
% a :- b.
% b :-c.
% c :- q0;p0.
% % c :- q0.
% % c :- p0.
% q0 :- not nq0.
% nq0 :- not q0.
% p0 :- not np0.
% np0 :- not p0.
%%%%%%%%%%%%%%%

% % :- table p/0, q/0.

% % p :- tnot(q).
% % q :- tnot(p).

% % % call_residual_program(q,P).

% :- table qr/0.
% :- table k0/0.
% :- table k1/0.
% :- table k2/0.
% :- table c1/0.
% :- table nc1/0.
% :- table nc2/0.
% :- table c2/0.

% :- table qrw/0.
% :- table nqrw/0.

:- table a0/0.
:- table a1/0.
% :- table a2/0.
% :- table a3/0.

:- table na0/0.
:- table na1/0.
% :- table na2/0.
% :- table na3/0.

% c1:- tnot(nc1).
% nc1:- tnot(c1).
% c2:- tnot(nc2).
% nc2:- tnot(c2).

% k0 :- c1.
% k1 :- tnot(c1), c2.
% k2 :- tnot(c1), tnot(c2).

% qr:- k0.
% qr:- k1.
% qr:- k2.

% % query(qr).


a0 :- tnot(na0).
na0 :- tnot(a0).

a1:- tnot(na1).
na1:- tnot(a1).

% a2:- tnot(na2).
% na2:- tnot(a2).

% a3:- tnot(na3).
% na3:- tnot(a3).


% qrw:- a0.
% qrw :- a1, tnot(nqrw).
% nqrw :- a1, tnot(qrw).
% qrw:- a2.
% qrw :- a3, tnot(nqrw).
% nqrw :- a3, tnot(qrw).

% :- table a/0.
% :- table a0/0.
% :- table a1/0.
:- table p0/0.
:- table q0/0.
:- table nq0/0.
:- table np0/0.
% :- table a/0.
% :- table b/0.
% :- table c/0.

% % a:- tnot(a).

:- table c/0.
:- table d/0.

c:- tnot(d).
d:- tnot(c).

p0:- tnot(np0), a0, c.
np0:- tnot(p0), na0, c.
p0:- tnot(np0), a0, d.
np0:- tnot(p0), na0, d.
q0:- tnot(nq0), a1 .
nq0:- tnot(q0), na1.

q:- p0.
q:- q0.

% a0:- tnot(a1), p0.
% a1:- tnot(a0), q0.

% q:- a0.
% q:- a1.

% a.
% b.

% q:- a.
% a:- b.
% b:- c.
% c:- p0.
% c:- q0.

% explode((A;B))

test_all:-
    findall(CEF,
        (call_residual_program(q,P),
        maplist(unqualify_clause, P, Clauses),
        maplist(explode_body,Clauses,ClausesExploded),
        maplist(flat_out,ClausesExploded,CEF)
        ), CExp),
        writeln(CExp),
        % maplist(pretty_print,CExp).
        maplist(pretty_string,CExp,SList),
        maplist(maplist(writeln),SList).

my_string((A,B),[A,B]).
my_string(G,G).
pretty_string(L,SFF):-
    maplist(my_string,L,SF),
    flatten(SF,SFF), !.

my_writeln((A,B)):- writeln(A), writeln(B).
my_writeln(G):- writeln(G).
pretty_print(L):-
    maplist(my_writeln,L), !.

flat_out(L,Res):- (is_list(L) -> L = [A,B], Res = (A,B) ; Res = L). 

test_u:-
    C = (p0:-c, a0, tnot(np0);d, a0, tnot(np0)),
    unqualify_clause(C,C1),
    explode_body(C1,LC1),
    flat_out(LC1,LCF),
    writeln(C1),
    writeln(LC1),
    writeln(LCF).

compose(H,B,(H:-B)).
explode_body((H :- B), R):-
    ( is_list(B) ->
        maplist(compose(H),B,R) ;
        R = (H :- B)
    ).

unqualify_clause((Head0 :- Body0), (Head :- Body)) :-
    unqualify(Head0, Head),
    unqualify(Body0, Body).


unqualify((A0;B0), G) :-
    !,
    % G = (A;B),
    G = [A,B],
    unqualify(A0, A),
    unqualify(B0, B).
unqualify((A0,B0), G) :-
    !,
    G = (A,B),
    unqualify(A0, A),
    unqualify(B0, B).
unqualify(tnot(A0), G) :-
    !,
    G = tnot(A),
    unqualify(A0, A).
unqualify(G, G).