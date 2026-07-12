testloop(0).
testloop(N):- N>0, write('Number : '), write(N),
nl, M is N-1, testloop(M).