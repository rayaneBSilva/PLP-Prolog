areaOfCircle(X, R) :- R is 3.14159 * (X * X).

main :-
    read(X),
    areaOfCircle(X, R),
    format('A = ~4f~n',[R]), nl,
    halt.