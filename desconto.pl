main :- 
    read(Prince),
    readSizes(Prince, 0, 0, 0, CountP, CountM, CountG),
    calculateDiscount(CountP, CountM, CountG, DiscountP, DiscountM, 
DiscountG),
    calculateTotal(Prince, CountP, CountM, CountG, DiscountP, DiscountM,
DiscountG, Total),
    format('~2f~n',[Total]), nl, 
    halt.
    
readSizes(Price, CountP, CountM, CountG, NewCountP, NewCountM,
NewCountG) :- 
    read(Size),
    (Size == -1 -> 
        NewCountP = CountP,
        NewCountM = CountM,
        NewCountG = CountG
    ;
        (Size == p -> 
            NewCountP1 is CountP + 1,
            readSizes(Price, NewCountP1, CountM, CountG, NewCountP,
NewCountM, NewCountG)
        ;
            (Size == m -> 
                NewCountM1 is CountM + 1,
                readSizes(Price, CountP, NewCountM1, CountG, NewCountP,
NewCountM, NewCountG)
            ;
                (Size == g ->
                    NewCountG1 is CountG + 1,
                    readSizes(Price, CountP, CountM, NewCountG1,
NewCountP, NewCountM, NewCountG)
                ;
                    readSizes(Price, CountP, CountM, CountG, NewCountP, 
NewCountM, NewCountG)
                )
            )
        )
    ).
calculateDiscount(CountP, CountM, CountG, DiscountP, DiscountM, 
DiscountG) :-
    (CountP >= 4 -> DiscountP = 8 ; DiscountP = 0),
    (CountM >= 4 -> DiscountM = 6 ; DiscountM = 0),
    (CountG >= 4 -> DiscountG = 4 ; DiscountG = 0).

calculateTotal(Price, CountP, CountM, CountG, DiscountP, DiscountM, 
DiscountG, Total) :-
        Quantity is CountP + CountM + CountG,
        Discount = (Quantity * Price) * ((DiscountP + DiscountM + 
DiscountG) / 100),
        Total is (Quantity * Price) - Discount.