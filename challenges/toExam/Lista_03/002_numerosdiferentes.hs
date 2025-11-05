{-
Defina uma função que receba três números e determine se todos são diferentes.
-}

main :: IO()
main = do
    let a = 1
        b = 2
        c = 0
    putStrLn(diferente a b c)

diferente :: Int -> Int -> Int -> String
diferente a b c
    | a /= b && a /= c && b /= c = "Todos os números são diferentes"
    | otherwise                  = "há algum número igual"
