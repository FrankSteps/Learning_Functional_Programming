{-
	Defina a função
	filtraPosicoesPares :: [Int] -> [Int]
	que retorna todos os elementos da lista de entrada que estão em posições pares.
-}

main :: IO()
main = print(filtrarPosicoesPares [0,1,2,3,4,5,6,7])

filtrarPosicoesPares :: [Int] -> [Int]
filtrarPosicoesPares []       = [] 
filtrarPosicoesPares (x:[])   = [x]
filtrarPosicoesPares (x:_:xs) = x : filtrarPosicoesPares xs