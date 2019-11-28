eh(deus, amor).
eh(amor, cego).
eh(steve_wonder, cego).

logo_eh(X, Y) :-
    eh(X, Y).
logo_eh(X, Y) :-
    eh(X, Z),
    logo_eh(Z, Y).

dieta(verdura).
dieta(peixe).
elefante_come(verdura).
elefante_eh(gordo).
baleia_come(peixe).
baleia_eh(gordo).

dieta_faz(X, Y) :-
    (   dieta(X), elefante_come(X), elefante_eh(Y));
    (   dieta(X), baleia_come(X), baleia_eh(Y)).


mais_queijo(mais_queijo).
menos_queijo(menos_queijo).
mais_buracos(mais_buracos).

quanto_mais(queijo, Y):-
    quanto_mais(buracos, Y).
quanto_mais(buracos, Y):-
    menos_queijo(Y).

% a) logo_eh(steve_wonder, deus).
% b) dieta_faz(COME,PESO).
% c) quanto_mais(queijo, menos_queijo).