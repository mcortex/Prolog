entrada(paella).
entrada(gazpacho).
entrada(consomé).

carne(filete_de_cerdo).
carne(pollo_asado).

pescado(trucha).
pescado(bacalao).

postre(flan).
postre(helado).
postre(pastel).

bebida(vino).
bebida(cerveza).
bebida(agua_mineral).

comida(X,Y,Z,W):-entrada(X),(carne(Y);pescado(Y)),postre(Z),bebida(W).
tienen_consome(X,Y,Z,W):-comida(X,Y,Z,W),X==consomé.
no_tienen_flan(X,Y,Z,W):-comida(X,Y,Z,W),Z\==flan.
