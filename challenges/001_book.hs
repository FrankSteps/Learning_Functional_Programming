{-
    Fornecidos três valores, a, b e c, escreva uma função que retorne quantos dos três valores são iguais.

    A reposta pode ser 3 (todos iguais), 2 (dois iguais) ou 0 (todos diferentes)
-}

main :: IO ()

main = do
    let a = 1
        b = 2
        c = 2

    putStrLn("Resultado: " ++ show(equals a b c) ++ " iguais")

equals :: Int -> Int -> Int -> Int
equals a b c
    | a == b && b == c           = 3 -- todos iguais
    | a == b || b == c || a == c = 2 -- ao menos dois iguais
    | otherwise                  = 0 -- nenhum igual

