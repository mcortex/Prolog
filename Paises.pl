esUnPais(argentina).
esUnPais(uruguay).
esUnPais(chile).
esUnPais(brasil).
esUnPais(paraguay).
esUnPais(bolivia).
esUnPais(peru).
esUnPais(colombia).
esUnPais(venezuela).
esUnPais(ecuador).
limita_con(argentina,chile).
limita_con(argentina,paraguay).
limita_con(argentina,uruguay).
limita_con(argentina,bolivia).
limita_con(argentina,brasil).
limita_con(brasil,uruguay).
limita_con(brasil,venezuela).
limita_con(brasil,peru).
limita_con(brasil,bolivia).
limita_con(brasil,paraguay).
limita_con(bolivia,peru).
limita_con(bolivia,chile).
limita_con(bolivia,paraguay).
limita_con(peru,ecuador).
limita_con(colombia,ecuador).
son_limitrofes(X,Y):-limita_con(X,Y);limita_con(Y,X).
son_translimitrofes(X,Y):-son_limitrofes(X,Z),son_limitrofes(Z,Y),not(son_limitrofes(X,Y)),dif(X,Y).

