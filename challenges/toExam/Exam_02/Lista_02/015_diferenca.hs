{-
	Dadas duas listas de inteiros ns e ms, retornar a lista de todos os elementos que estão em 
	ns e não estão em ms. Elementos repetidos de ns se mantêm repetidos.
-}

main :: IO()
main = print(diferenca [-2,-1,0,1] [0,1,2,3])

diferenca :: [Int] -> [Int] -> [Int]
diferenca [] _ = []
diferenca (x:xs) ys 
	| elem x ys = diferenca xs ys
	| otherwise = x : diferenca xs ys 