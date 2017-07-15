numero(-3).
numero(-2).
numero(-1).
numero(0).
numero(1).
numero(2).
numero(3).
prod_cart(X,Y):-numero(X),numero(Y).
seleccion(X,Y):-prod_cart(X,Y),X<Y.
proyeccion(X):-seleccion(X,_).
maximo(X):-numero(X),not(proyeccion(X)).


