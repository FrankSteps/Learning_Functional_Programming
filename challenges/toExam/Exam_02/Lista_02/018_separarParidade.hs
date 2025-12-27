{-
	Dada uma lista de inteiros, separar em duas listas, uma contendo todos os pares e outra 
	contendo todos os impares. A função retornará uma dupla onde ambos componentes são listas.
-}

main :: IO()
main = print(separaParidade([1,2,3,4,5,6,7]))

separaParidade :: [Int] -> ([Int], [Int])
separaParidade [] = ([],[])
separaParidade (x:xs)
	| mod x 2 == 0 = (x : pares, impares)
	| otherwise    = (pares, x : impares)
	where
		(pares, impares) = separaParidade xs 
