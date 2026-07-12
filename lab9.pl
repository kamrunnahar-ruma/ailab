big(bear).big(elephant).
small(cat).small(dog).
brown(bear).
black(cat).black(dog).
gray(elephant).
dark(Z) :- black(Z).
dark(Z) :- brown(Z).
dark(Z) :- gray(Z).
