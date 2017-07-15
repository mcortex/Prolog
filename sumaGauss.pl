gauss(0,0):- !.
gauss(X,G):- X1 is (X-1),gauss(X1,G1), G is (X+G1).
