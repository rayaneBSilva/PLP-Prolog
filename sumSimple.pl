sumSimple(X, Y , R) :- R is X + Y.

main :- 
      read(X),
      read(Y),
      sumSimple(X, Y, R),
      write('SOMA = '), write(R), nl, 
      halt.