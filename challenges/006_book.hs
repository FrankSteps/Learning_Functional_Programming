{-
    Construa uma função que retorne o MMC (Mínimo Múltiplo comum) entre 3 números inteiros

    ex:
    mmc 2 4 3
    > 12

    afinal:
    2 * 6 = 12
    4 * 3 = 12
    3 * 4 = 12
-}

main :: IO ()
main = do
    let l = 9
        n = 8
        m = 7

    putStrLn("menor: " ++ show(menor l n m))


menor :: Int -> Int -> Int -> Int
menor l n m
    | l <= n && l <= m = l
    | n <= l && n <= m = n
    | otherwise        = m

