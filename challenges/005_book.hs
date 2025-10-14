{-
    Para a sequencia:

    a1 = raiz de (6)
    a2 = raiz de (6 + raiz de (6))
    a3 = raiz de (6 + raiz de (raiz de 6))

    Encontre a forma recursiva para a n+1
-}

main :: IO()
main = do
    let n = 10
    putStrLn("a = " ++ show(raizd n))

raizd :: Int -> Double -- Double é mais preciso
raizd 1 = sqrt(6)
raizd n = sqrt(6 + raizd(n-1))
