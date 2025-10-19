{-
    Crie uma função que retorna o número ao quadrado
-}

main :: IO ()

main = do
    let a = 3
    putStrLn ("O quadrado de " ++ show a ++ " é " ++ show (quad a))

quad :: Float -> Float
quad a = a ** 2
