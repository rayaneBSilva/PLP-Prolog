mediaTwo(X, Y, Z, R) :- R is  ((X * 2) + (Y * 3) + (Z * 5)) / 10.

main :-
      read(X),
      read(Y),
      read(Z),
      mediaTwo(X, Y, Z, R),
      write('Media = '), write(R), nl,
      halt.