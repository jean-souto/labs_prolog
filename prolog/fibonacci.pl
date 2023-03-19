par(1,0).
par(2,1).
par(X,0) :- X>2, T is X-1, par(T,1).
par(X,1) :- X>2, T is X-1, par(T,0).

fib(0,0).
fib(1,1).
fib(2,1).
fib(X,Y) :- par(X,0),
    		X1 is (X-1) // 2,
    		Temp is X1+1,
    		fib(Temp,Y2),
    		Quad is Y2*Y2,
    		fib(X1,Y3),
    		Quad2 is Y3*Y3,
    		Y is Quad+Quad2.
    
fib(X,Y) :- par(X,1),
    		X1 is X // 2,
    		Temp is X1+1,
    		fib(Temp,Y2),
    		fib(X1,Y3),
    		Soma is (2*Y2)*Y3,
    		Quad is Y3*Y3,
    		Y is Soma-Quad.