main :- 
    read(Matriz),
    matriz_maior_elemento(Matriz, Coordenada),
    nth1(1, Coordenada, Linha),
    nth1(2, Coordenada, Coluna),
    write(Linha),
    write(' '),
    write(Coluna),
    nl,
    halt.
    
matriz_maior_elemento(Matriz, Coordenada) :- 
    flatten(Matriz,Lista),
    max_list(Lista, MaiorElemento),
    coordenada_elemento(Matriz, MaiorElemento, Coordenada).
    
coordenada_elemento([Linha | _], Elemento, [1, Coluna]) :- 
    nth1(Coluna, Linha, Elemento).
coordenada_elemento([_ | Resto], Elemento, [Linha, Coluna]) :- 
    coordenada_elemento(Resto, Elemento, [LinhaAnterior, Coluna]),
    Linha is LinhaAnterior + 1.