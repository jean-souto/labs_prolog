potencia(_,0,1). % caso base
potencia(X,1,X). % caso base
potencia(X,Y,Z) :-	Y1 is Y-1,
					potencia(X,Y1,Z1),
					Z is Z1*X.
