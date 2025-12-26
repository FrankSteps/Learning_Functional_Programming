{-
	Verificar se uma lista só contém positivos.
-}

main :: IO()
main = print(soPositivo([1,2,-3,4,5]))

soPositivo :: [Int] -> Bool 
soPositivo [] = True 
soPositivo (x:xs)
	| x > 0     = soPositivo xs
	| otherwise = False
