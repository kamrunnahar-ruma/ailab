start(0).
delta(0,a,1).
delta(0,b,0).
delta(1,a,1).
delta(1,b,2).
delta(2,a,2).
delta(2,b,2).
final(2).
parse(L) :- start(S), trans(S,L).
trans(S,[]):- final(S), write(S), write(' '), write([]), nl.
trans(S,[A|B]) :- delta(S,A,S1), /* S ---A---> S1 */

write(S), write(' '),
write([A|B]), nl, trans(S1,B).

