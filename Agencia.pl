transporte(roma,20).
transporte(londres,30).
transporte(tunez,10).

alojamiento(roma,hotel,50).
alojamiento(roma,hostal,30).
alojamiento(roma,camping,10).
alojamiento(londres,hotel,60).
alojamiento(londres,hostal,40).
alojamiento(londres,camping,20).
alojamiento(tunez,hotel,40).
alojamiento(tunez,hostal,20).
alojamiento(tunez,camping,5).
% Expresar la relación viaje(C,S,H,P) que se interpreta por: el viaje a
% la ciudad C durante S semanas con estancia en H cuesta P pesos.
multiplicar(P,X,Y):-P is X*Y.
sumar(S,X,Y):-S is X+Y.
menor(X,Y):-X<Y.
viaje(C,S,H,P):-transporte(C,X),alojamiento(C,H,Y),multiplicar(E,S,Y),sumar(P,E,X).
%Viaje economico costo p es menor que pmax
viajeeconomico(C,S,H,P,Pmax):-viaje(C,S,H,P),menor(P,Pmax).
