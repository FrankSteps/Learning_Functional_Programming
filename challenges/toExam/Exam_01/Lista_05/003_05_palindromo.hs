{-
Ver se um número Integer é palíndromo.
-}

main :: IO()
main = print(palindromo)

palindromo :: Bool
palindromo = reverse list == list 
    where
        list = [1,0,0,1,0,0,1]  