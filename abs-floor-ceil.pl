floor(X, Floor) :- X =:= integer(X - 0.5) + 1 -> Floor is X; Floor is integer(X - 0.5).
ceil(X, Ceil) :- X =:= integer(X + 0.5) - 1 -> Ceil is X ; Ceil is integer(X + 0.5).
absoluto(X, Abs):- (X >= 0 -> Abs is X; Abs is -X).

main :-
    read(X),
    floor(X, Floor),
    ceil(X, Ceil),
    absoluto(X, Abs),
    write('Floor de '), write(X), write(' = '), write(Floor), nl,
    write('Ceil de '), write(X), write(' = '), write(Ceil), nl,
    write('Abs de '), write(X), write(' = '), write(Abs), nl,
    halt.