mediaOne(X, Y, R) :- R is  ((X * 3.5) + (Y * 7.5)) / 11.

main :- 
    read(X),
    read(Y),
    mediaOne(X, Y, R),
    format('MEDIA = ~5f~n', [R]),
    halt.