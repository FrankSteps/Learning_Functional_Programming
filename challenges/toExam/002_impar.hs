{-
    Defina uma função que permite verificar se um dado número é ímpar
-}

main :: IO()
main = do
    let a = 2
    putStrLn("O número: " ++ show a ++ eImpar(a))

-- função que verifica se determinado número é ímpar
eImpar :: Int -> String
eImpar a
    | mod a 2 /= 0 = " é impar"
    | otherwise    = " não é impar"
