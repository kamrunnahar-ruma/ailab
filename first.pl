% Facts
parent(john, mary).
parent(john, tom).
parent(mary, alice).
parent(tom, bob).

male(john).
male(tom).
female(mary).
female(alice).

% Rules
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).

grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
