{-
	Pesquise o que faz a função predefinida or. Defina uma função que faça o mesmo que or.

	false or false or false = false 
	false or false or true  = true 
	false or true  or false = true 
	false or true  or true  = true 
	true  or false or false = true 
	true  or false or true  = true 
	true  or true  or false = true 
	true  or true  or true  = true 

	:: Pecorre a lista até achar um valor verdadeiro. Caso não ache nenhum valor verdadeiro, então é falso.
-}

main :: IO()
main = print(recOr([False, False, True]))

recOr :: [Bool] -> Bool 
recOr [] = False 
recOr (x:xs)
	| x == True = True 
	| otherwise = recOr xs 