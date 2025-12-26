{-
	Dobrar todos os elementos de uma lista.
-}

main :: IO()
main = print(dobraElementos [1,2,3,4,5,6])

dobraElementos :: [Int] -> [Int]
dobraElementos [] = [] 
dobraElementos (x:xs) = (x*2) : dobraElementos xs  