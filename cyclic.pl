% Graph edges
edge(a,b).
edge(b,c).
edge(c,a).
edge(c,d).

% Find path
path(X,Y) :-
    edge(X,Y).

path(X,Y) :-
    edge(X,Z),
    path(Z,Y).

% Check cycle
cycle(X) :-
    path(X,X).