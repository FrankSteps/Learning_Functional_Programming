{-
    Na lista de exercícios anterior você deve ter definido a função sinal, mas talvez com outro nome. Usando sua definição anterior, mas, se for caso, alterando o nome da função, avalie as expressões a. b. e c. listadas acima.
-}

main :: IO()
main = do
    let a = 4 - (2*3)
        b = (3^2) - (2*4)
        c = (4*4) - (2^4)

    putStrLn("Sinal recebendo o valor a: " ++ show(sinal a))
    putStrLn("Sinal recebendo o valor b: " ++ show(sinal b))
    putStrLn("Sinal recebendo o valor c: " ++ show(sinal c))

sinal :: Int -> Int
sinal x
    | x > 0     =  1
    | x < 0     = -1
    | otherwise =  0
