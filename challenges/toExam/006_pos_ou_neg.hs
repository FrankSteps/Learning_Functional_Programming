{-
    Defina uma função que receba um número Int e retorne -1, 0 ou 1 a depender se o mesmo é negativo, nulo ou positivo, respectivamente.
-}

main :: IO()
main = do
    let a = 5
    putStrLn(show(posNeg a))

-- tem como base os números menores, maiores e igual ao 0
posNeg :: Int -> Int
posNeg a
    | a < 0      = -1
    | a > 0      =  1
    | otherwise  =  0
