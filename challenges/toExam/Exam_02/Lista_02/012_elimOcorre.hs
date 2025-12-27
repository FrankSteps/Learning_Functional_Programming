{-
	Dada uma lista de inteiros, eliminar todas as ocorrências de um dado elemento.
-}

main :: IO()
main = print(elimOcorre 3 [1,2,3,4,5,3,6,7,3])

elimOcorre :: Int -> [Int] -> [Int]
elimOcorre n [] = [] 
elimOcorre n (x:xs) 
	| x == n    = elimOcorre n xs 
	| otherwise = x : elimOcorre n xs 

