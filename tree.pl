edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(f,g).

route(A,B):- edge(A,C),route(C,B).
route(A,B):- edge(A,B).

