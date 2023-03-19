fat(0,1). % caso base
fat(N,X) :- N > 0,
			N1 is N-1,
			fat(N1,Y),
			X is N*Y.