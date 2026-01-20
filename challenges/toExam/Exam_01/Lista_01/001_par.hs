{-
    Defina uma função que permita verificar se um dado número int é par
-}


main::IO()
main = do
    let a = 3 
    putStrLn("o número: " ++ show a ++ ePar(a))

-- função que verifica se o número é par
ePar :: Int -> String
ePar a
    | mod a 2 == 0  = " é par"
    | otherwise     = " não é par"
