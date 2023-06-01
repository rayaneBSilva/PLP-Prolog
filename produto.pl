produto(X, Y, R) :- R is X * Y.

main :- 
      read(X),
      read(Y),
      produto(X, Y, R),
      write('PROD = '), write(R), nl,
      halt.