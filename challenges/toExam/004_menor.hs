{-
    Defina uma função que "(calcule: ?)" o menor de dois números do tipo Int
-}

main :: IO()
main = do
    let a = 3
        b = 7
    putStrLn("O menor entre " ++ show a ++ " e " ++ show b ++ " é " ++ oMenor a b)

-- função responsável por mostrar o menor número
oMenor :: Int -> Int -> String
oMenor a b
    | a < b     = show a
    | a > b     = show b
    | otherwise = "igual"
