Union([],S,S).
union(S,[],S).
union([E|T],S2,S):-
 member(E,S2), union(T,S2,S).
union([E|T],S2,[E|S]):-
 Union(T,S2,S).