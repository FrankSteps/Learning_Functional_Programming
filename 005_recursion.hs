{-
    Recursão em Haskell
    Soma, Fibonacci, Fatorial
-}


--função principal
main :: IO ()
main = do
    let x = 5
        y = 5
        z = 5

    --chamando e mostrando o valor de cada função
    putStrLn("soma: " ++ show(somas x))
    putStrLn("fibn: " ++ show(fibonacci y))
    putStrLn("fatr: " ++ show(fatorial z))


--função que soma todos os números - somatório
somas :: Int -> Int
somas 1 = 1
somas x = somas(x-1)+x


--função que representa a sequencia de fibonacci
fibonacci :: Int -> Int
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci y = fibonacci(y-1) + fibonacci(y-2)


--função que multiplica todos os números - produtório
fatorial :: Int -> Int
fatorial 0 = 1
fatorial z = fatorial(z-1)*z

