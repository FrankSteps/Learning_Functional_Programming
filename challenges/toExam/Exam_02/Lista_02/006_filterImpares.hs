{-
	Filtrar os números ímpares de uma lista de inteiros, ou seja, ficar somente com os ímpares.
-}

main :: IO()
main = print(filterImpar([1,2,3,4,5]))

filterImpar :: [Int] -> [Int]
filterImpar [] = []
filterImpar (x:xs)
	| mod x 2 /= 0 = x : filterImpar xs
	| otherwise    = filterImpar xs 