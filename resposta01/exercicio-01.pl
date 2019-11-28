amava(carlos, dora).
amava(dora, lia).
amava(lia,lea).
amava(lea,paulo).
amava(paulo,juca).
amava(juca,dora).
amava(dora,carlos).
amava(dora,rita).
amava(rita,dito).
amava(dito,rita).
amava(rita,carlos).
amava(dora,pedro).
amava(pedro,filha).
amava(filha,carlos).
amava(dora,lea).
amava(dora,paulo).
amava(dora,juca).
amava(dora,dito).
amava(dora,filha).

rivais(X,Y) :-
    amava(X,Z),
    amava(Y,Z),
    X\=Y.

casal(X,Y) :-
    amava(X,Y),
    amava(Y,X),
    X @< Y.

% a) amava(carlos, CARLOS_AMAVA)
% b) rivais(X,Y)
% c) casal(X,Y)