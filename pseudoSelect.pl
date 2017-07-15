numero(1).
numero(2).
numero(3).
%CARTESIANO: X * Y
cartesiano(X,Y):-numero(X),numero(Y).
%SELECCION: condicion para filtrar el cartesiano, en este caso X<Y
seleccion(X,Y):-cartesiano(X,Y),X<Y.
proyeccionX(X):-seleccion(X,_).
proyeccionY(Y):-seleccion(_,Y).

maximo(X):-numero(X),(not(proyeccionX(X))).
minimo(X):-numero(X),(not(proyeccionY(X))).
