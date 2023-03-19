cont(X,Y) :- X<10,Y is 1. % caso base
cont(X,Y) :- 	N1 is X div 10,
				cont(N1,Y1),
				Y is Y1+1.
