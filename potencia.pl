potencia(A,0,1):- A=\=0,!. %No existe 0^0
potencia(X,Y,P):-Y1 is Y-1,potencia(X,Y1,P1), P is X*P1.
% Y funciona como contador, es descendente porque no hay un corte hacia
% un maximo, el corte esta dado con la primer sentencia cuando llega a 0
