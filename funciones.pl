myFuncion(X,Y):-Y is -X,X=<0,!.
myFuncion(X,Y):-Y is X,X<1,X>0,!.
myFuncion(X,Y):-Y is X*X,X>=1.
