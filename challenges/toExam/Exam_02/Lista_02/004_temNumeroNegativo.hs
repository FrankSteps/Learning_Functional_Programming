{-
	Verificar se uma lista contém algum número negativo.
-}

main :: IO()
main = print(temNegativo[1,2,3,-4,5])

temNegativo :: [Int] -> Bool
temNegativo [] = False
temNegativo (x:xs)
	| x <  0 = True 
	| x >= 0 = temNegativo xs 
