{-
	Defina a função
	filtraPosicoesImpares :: [Int] -> [Int]
	que retorna todos os elementos da lista de entrada que estão em posições ímpares.
-}

main :: IO()
main = print(filtrarPosicoesImpares [0,1,2,3,4,5,6,7])


filtrarPosicoesImpares :: [Int] -> [Int]
filtrarPosicoesImpares []     = []
filtrarPosicoesImpares (_:[]) = []
filtrarPosicoesImpares (_:x:xs) = x : filtrarPosicoesImpares xs 