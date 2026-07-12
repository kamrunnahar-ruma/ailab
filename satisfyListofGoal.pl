fruit(apple).
fruit(banana).
fruit(mango).

satisfy([]).

satisfy([Goal|Rest]) :-
    call(Goal),
    satisfy(Rest).

start :-
    read(Goals),
    satisfy(Goals).