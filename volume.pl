calculaVolume(Numero, R) :- R is ((4 / 3.0) * 3.14159 * (Numero * Numero * Numero)).

main :- 
  read(Numero),
  calculaVolume(Numero, R), 
  format('Volume = ~2f~n', [R]), nl,
  halt.