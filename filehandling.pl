write_file :-
    open('data.txt', write, File),
    write(File, 'Hello Prolog'),
    close(File).

read_file :-
    open('data.txt', read, File),
    read_string(File, _, Data),
    close(File),
    write(Data).