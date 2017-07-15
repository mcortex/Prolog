hombre(pedro).
hombre(manuel).
hombre(arturo).
mujer(mar�a).
padre(pedro, manuel).
padre(pedro, arturo).
padre(pedro, mar�a).
hijo(X,Y):-padre(Y,X),hombre(X). %expresa que X es un hijo var�n de Y.
hija(X,Y):-padre(Y,X),mujer(X). %expresa que X es una hija de Y.
ni�o(X,Y):-hijo(X,Y),hija(X,Y).
% hermano-o-hermana(X,Y):-hijo(X,Z),hija(Y,Z). %expresa que X es hermano
% o hermana de Y.
hermano(X,Y):-hijo(X,Z),hijo(Y,Z),X\==Y. %expresa que X es un hermano de Y.
hermana(X,Y):-hija(X,Z),hijo(Y,Z). %expresa que X es una hermana de Y.
hermano_o_hermana(X,Y):-(hermano(X,Y);hermana(X,Y)),X\==Y.




















