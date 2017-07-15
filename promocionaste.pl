materia(programacion_avanzada).
parcial1(ana,7).
parcial1(juan,4).
parcial1(martin,8).
parcial1(ruperto,4).
parcial2(ana,9).
parcial2(juan,8).
parcial2(martin,10).
parcial2(jorge,2).
promedio(P,N1,N2):-P is (N1+N2)/2.
promocionan(M,A,P):-materia(M),parcial1(A,X),parcial2(A,Y),promedio(P,X,Y),P>=7.
cursada(M,A,P):-materia(M),parcial1(A,X),parcial2(A,Y),promedio(P,X,Y),P<7,P>=4.
recursan(M,A,P):-materia(M),parcial1(A,X),parcial2(A,Y),promedio(P,X,Y),P<4.
%Obtener medalla al merito de los mayores promedios

promedios(P):-parcial1(A,X),parcial2(A,Y),promedio(P,X,Y).
pcartesiano(X,Y):-promedios(X),promedios(Y).
seleccion(X,Y):- pcartesiano(X,Y),X<Y.
proyeccionX(X):- seleccion(X,_).
proyeccionY(Y):- seleccion(_,Y).
maximo(X):- promedios(X),not(proyeccionX(X)).
minimo(Y):- promedios(Y),not(proyeccionY(Y)).
medalla_de_honor(M,A,P):-promocionan(M,A,P),maximo(P).
