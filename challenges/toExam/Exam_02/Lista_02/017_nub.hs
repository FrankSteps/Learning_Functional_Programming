{-
	Dada uma lista de inteiros ns retornar a lista que contenha todos os elementos de ns, 
	porém sem nenhuma repetição (sem nenhum elemento repetido).
-}

main :: IO()
main = print(nubN [3,3,3,7,7,7,7,7,7,7])


nubN :: [Int] -> [Int]
nubN [] = []
nubN (x:xs) 
	| elem x xs = nubN xs
	| otherwise = x : nubN xs


