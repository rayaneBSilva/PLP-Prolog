sum(X, Y, R) :- R is X + Y.

main :-
    read(X),
    read(Y),
    sum(X, Y, R),
    write('X = '), write(R), nl,
    halt.