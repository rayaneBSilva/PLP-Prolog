diferenca(A, B, C, D, R) :- R is ((A * B) - (C * D)).

main :-
      read(A),
      read(B),
      read(C),
      read(D),
      diferenca(A, B, C, D, R),
      write('Diferença = '), write(R), nl, 
      halt.