hombre(carlitos,cumbia,cuarteto).
hombre(ruperto,cuarteto,salsa).
hombre(lucas,cumbia,chamame).
mujer(marta,cuarteto,salsa).
mujer(ana,salsa,tango).
mujer(maria,cumbia,tango).
mujer(ruperta,rock,ballet).

pareja(X,Y,B1):-hombre(X,B1,_),mujer(Y,B1,_).
pareja(X,Y,B2):-hombre(X,_,B2),mujer(Y,_,B2).
pareja(X,Y,B1):-hombre(X,B1,_),mujer(Y,_,B1).
pareja(X,Y,B2):-hombre(X,_,B2),mujer(Y,B2,_).


