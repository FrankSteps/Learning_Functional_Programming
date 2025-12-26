{-
	O produto dos elementos de uma lista de inteiros
-}

main :: IO()
main = print(produtoList([1,2,3,4,5]))

produtoList :: [Int] -> Int 
produtoList [] = 1 
produtoList (x:xs) = x * produtoList xs