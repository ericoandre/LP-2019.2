atrizes(X) :-
    actress(_, X,_).

trabalharam_juntos(X, Y) :-
    actor(MOVIE1, Y, _),
    actress(MOVIE1, X, _),
    actor(MOVIE2, Y, _),
    actress(MOVIE2, X, _),
    MOVIE1\=MOVIE2,
    X @< Y.

trabalharam_ano_par(X) :-
    movie(M, YEAR),
    0 is mod(YEAR,2),
    (actor(M, X, _) ; actress(M, X, _)).

% a) setof('X', atrizes(X), Atrizes).
% b) setof('X Y', (trabalharam_juntos(X, Y)), Duplas).
% c) setof('X', trabalharam_ano_par(X), NOME).