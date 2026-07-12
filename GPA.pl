% Program to calculate GPA for 3 courses

calculate_gpa :-
    write('Enter grade point of Course 1: '), read(G1),
    write('Enter credit 1: '), read(C1),

    write('Enter grade point of Course 2: '), read(G2),
    write('Enter credit 2: '), read(C2),

    write('Enter grade point of Course 3: '), read(G3),
    write('Enter credit : '), read(C3),

    TotalPoints is (G1 * C1) + (G2 * C2) + (G3 * C3),
    TotalCredits is C1 + C2 + C3,
    
    GPA is TotalPoints / TotalCredits,
    
    write('The GPA of the student is: '), 
    write(GPA), 
    nl.