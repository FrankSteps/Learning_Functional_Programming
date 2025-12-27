{-
	Dada uma lista de inteiros, eliminar a primeira ocorrência de um dado elemento, 
	se ele  ocorrer, senão retornar a  lista  original.
-}

main :: IO()
main = print(primOcorre 3 [1,2,3,4,5,3,6,7,3])

primOcorre :: Int -> [Int] -> [Int]
primOcorre n [] = [] 
primOcorre n (x:xs) 
	| x /= n    = x : primOcorre n xs
	| otherwise = xs 