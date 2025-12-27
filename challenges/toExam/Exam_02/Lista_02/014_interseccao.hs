{-
	Dadas duas listas de inteiros ns e ms, retornar a lista de todos os elementos que estão em 
	ns e ms ao mesmo tempo. Elementos repetidos de ns se mantém repetidos na lista resultante.

	A intersecção B = {x| x pertence ao |conjunto A| e x pertence ao |conjunto B|}
-}

main :: IO()
main = print()

interseccao :: [Int] -> [Int] -> [Int]
interseccao [] _ = []
interseccao (x:xs) ys
	| elem x ys = x : interseccao xs ys
	| otherwise = interseccao xs ys 
