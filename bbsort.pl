% Bubble sort program

bubble_sort(List, Sorted) :-
    pass(List, NewList),
    (List = NewList ->
        Sorted = NewList
    ;
        bubble_sort(NewList, Sorted)
    ).

pass([X,Y|Rest], [Y,X|Rest]) :-
    X > Y.

pass([X|Rest], [X|NewRest]) :-
    pass(Rest, NewRest).

pass([], []).
pass([X], [X]).