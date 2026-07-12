% Program to print elements of a list

print_list([]).

print_list([Head | Tail]) :-
    write(Head),
    nl,
    print_list(Tail).