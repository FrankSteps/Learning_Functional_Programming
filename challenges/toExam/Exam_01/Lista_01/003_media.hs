{-
    Defina uma função que calcule a média aritmética de três números Double
-}

main :: IO ()
main = do
    let a = 1
        b = 1
        c = 1
    putStrLn("Média: " ++ show (media a b c))

-- função que calcula a média aritmética
media :: Double -> Double -> Double -> Double
media a b c = (a + b + c)/3
