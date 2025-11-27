{-
A lista com os múltiplos de 3 entre 0 e 100 seguida 
da lista com os múltiplos de 5 entre 100 e 200, inclusive.
-}

main :: IO()
main = print(multiplosInc)

multiplosInc :: [Int]
multiplosInc = 
    [x | x <- [0..100], mod x 3 == 0] ++ 
    [y | y <- [100..200], mod y 5 == 0]
