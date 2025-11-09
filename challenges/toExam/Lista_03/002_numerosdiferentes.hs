{-
Defina uma função que receba três números e determine se todos são diferentes.
-}

main :: IO()
main = do
    let numero_a = 1
        numero_b = 2
        numero_c = 0
    putStrLn(diferente numero_a numero_b numero_c)

diferente :: Int -> Int -> Int -> String
diferente numero_a numero_b numero_c
    | numero_a /= numero_b && numero_a /= numero_c && numero_b /= numero_c = "Todos os números são diferentes"
    | otherwise                                                            = "há algum número igual"
