triangulo(A, B, C, AreaDoTriangulo) :- 
  AreaDoTriangulo is (A * C) / 2.

circulo(R, AreaDoCirculo) :-
  AreaDoCirculo is 3.14159 * (R * R).

trapezio(A, B, C, AreaDoTrapezio) :-
  AreaDoTrapezio is ((A + B) * C) / 2.

quadrado(B, AreaDoQuadrado) :-
  AreaDoQuadrado is B * B.

retangulo(A, B, C, AreaDoRetangulo) :-
  AreaDoRetangulo is A * B.

main :- 
  read(A),
  read(B),
  read(C),
  triangulo(A, B, C, AreaDoTriagulo),
  circulo(C, AreaDoCirculo),
  trapezio(A, B, C, AreaDoTrapezio),
  quadrado(B, AreaDoQuadrado),
  retangulo(A, B, C, AreaDoRetangulo),
  format('Triangulo: ~3f~n', [AreaDoTriagulo]),
  format('Circulo: ~3f~n', [AreaDoCirculo]),
  format('Trapezio: ~3f~n', [AreaDoTrapezio]),
  format('Quadrado: ~3f~n', [AreaDoQuadrado]),
  format('Retangulo: ~3f~n', [AreaDoRetangulo]),nl,
  halt.