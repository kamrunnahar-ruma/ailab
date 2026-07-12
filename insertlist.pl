% Insert an element into a list

insert(X, L, [X|L]).

start :-
    write('Enter the element to insert: '),
    read(Element),
    write('Enter the list: '),
    read(List),
    insert(Element, List, Result),
    write('Updated List: '),
    write(Result).