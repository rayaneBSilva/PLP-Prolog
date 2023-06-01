calculaSalario(Horas, ValorPorHora, R) :- R is (Horas * ValorPorHora).

main :- 
  read(Number),
  read(Horas),
  read(ValorPorHora),
  calculaSalario(Horas, ValorPorHora, R),
  write("NÚMERO  = "), 
  write(Number),nl,
  format('SALÁRIO = ~2f~n', [R]), nl,
  halt.