readfromfile(Infile, Outfile) :-
     see(Infile), tell(Outfile),
     read(X1),read(X2),read(X3),
     write(X1),nl,write(X2) ,nl, write(X3),nl,
     seen, told.
