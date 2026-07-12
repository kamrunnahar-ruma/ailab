intersect([],S,[]).
intersect([E|T],S2,[E|S]):-
 member(E,S2), intersect(T,S2,S).
intersect([E|T],S2,S):-
 intersect(T,S2,S).