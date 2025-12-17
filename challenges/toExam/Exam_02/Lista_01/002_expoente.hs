{-
Escreva uma função que receba um inteiro m e um natural n e 
calcule m^n. Não pode usar os operadores (**) e (^).

2^5 = 2 * 2 * 2 * 2 * 2
m^n = m * m * m * m * m - m multiplicado por ele mesmo n vezes 
-}


main :: IO()
main = do 
    let m = 2
        n = 2
    print(expoente m n)

expoente :: Int -> Int -> Int 
expoente m 0 = 1
expoente m n = m * expoente m (n-1)