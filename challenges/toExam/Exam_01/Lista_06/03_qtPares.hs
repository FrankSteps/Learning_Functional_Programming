{-
Defina uma função que dada uma lista de inteiros 
retorne quantos da lista são pares
-}

main :: IO()
main = do
	let lista = [1,3,4,4,6] 
	print(qtpares lista)

qtpares :: [Int] -> Int 
qtpares lista = length pares
	where
		pares = [x | x <- lista, mod x 2 == 0]