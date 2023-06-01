calculaBonus(SalarioVendedor, ValorTotalVendido, R) :- R is (ValorTotalVendido * 0.15) + SalarioVendedor.

main :-
  read(SalarioVendedor),
  read(ValorTotalVendido),
  calculaBonus(SalarioVendedor, ValorTotalVendido, R),
  format('Total = R$ ~2f~n', [R]), nl,
  halt.