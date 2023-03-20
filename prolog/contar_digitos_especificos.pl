igual(X,Y,Z) :- X == Y, Z is 1.
igual(X,Y,Z) :- X \== Y, Z is 0.

cont_sete(7,1) :- !.
cont_sete(X,0) :- 	X < 10, !.
cont_sete(X,Y) :- 	X1 is X mod 10,
    				igual(X1,7,Z),
    				X2 is X div 10,
    				cont_sete(X2,Z1),
    				Y is Z1+Z.