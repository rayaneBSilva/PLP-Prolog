calculaProduto(Codigo_Produto1, Quantidade_Produto1, Preco_Produto1, Codigo_Produto2, Quantidade_Produto2, Preco_Produto2, TotalAPagar) :-
  TotalAPagar is (Quantidade_Produto1 * Preco_Produto1) + (Quantidade_Produto2 * Preco_Produto2).

main :-
  read(Codigo_Produto1),
  read(Quantidade_Produto1),
  read(Preco_Produto1),
  read(Codigo_Produto2),
  read(Quantidade_Produto2),
  read(Preco_Produto2),
  calculaProduto(Codigo_Produto1, Quantidade_Produto1, Preco_Produto1, Codigo_Produto2, Quantidade_Produto2, Preco_Produto2, TotalAPagar),
  nl,
  format('Valor a pagar: R$ ~2f~n', [TotalAPagar]), nl,
  halt. 