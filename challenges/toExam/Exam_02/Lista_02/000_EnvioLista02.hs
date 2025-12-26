{-

-}

main :: IO()
main = do 
	-- definindo as listas-base
	let listaInt  = [1,2,3,4,5,6,7]
		listaBool = [True, True, True]

	-- Mostrando o retorno de cada função 	
	print(dobraElementos(listaInt))
	print(recOr(listaBool))
	print(produtoList(listaInt))
	print(temNegativo(listaInt))
	print(soPositivo(listaInt))
	print(filterImpar(listaInt))
	print(triplicar(listaInt))
	print(triplicaPar(listaInt))
	print(triParDelImpar(listaInt))


-- Primeira Questão 
dobraElementos :: [Int] -> [Int]
dobraElementos [] = [] 
dobraElementos (x:xs) = (x*2) : dobraElementos xs 


-- Segunda Questão 
recOr :: [Bool] -> Bool 
recOr [] = False 
recOr (x:xs)
	| x == True = True 
	| otherwise = recOr xs 


-- Terceira Questão 
produtoList :: [Int] -> Int 
produtoList [] = 1 
produtoList (x:xs) = x * produtoList xs


-- Quarta Questão 
temNegativo :: [Int] -> Bool
temNegativo [] = False
temNegativo (x:xs)
	| x <  0 = True 
	| x >= 0 = temNegativo xs 


-- Quinta Questão 
soPositivo :: [Int] -> Bool 
soPositivo [] = True 
soPositivo (x:xs)
	| x > 0     = soPositivo xs
	| otherwise = False


-- Sexta Questão 
filterImpar :: [Int] -> [Int]
filterImpar [] = []
filterImpar (x:xs)
	| mod x 2 /= 0 = x : filterImpar xs
	| otherwise    = filterImpar xs 


-- Sétima Questão 
triplicar :: [Int] -> [Int]
triplicar [] = []
triplicar (x:xs) = (x*3) : triplicar xs


-- Oitava Questão 
triplicaPar :: [Int] -> [Int]
triplicaPar [] = []
triplicaPar (x:xs)
	| mod x 2 == 0 = (x*3) : triplicaPar xs
	| otherwise    = x : triplicaPar xs 


-- Nona Questão 
triParDelImpar :: [Int] -> [Int]
triParDelImpar [] = [] 
triParDelImpar (x:xs) 
	| mod x 2 == 0 = (x*3) : triParDelImpar xs
	| otherwise    = triParDelImpar xs 