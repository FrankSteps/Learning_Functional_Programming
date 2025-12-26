{-
	Triplicar os pares, eliminar os ímpares. 
-}

main :: IO()
main = print(triParDelImpar([1,2,3,4,5,6,7]))

triParDelImpar :: [Int] -> [Int]
triParDelImpar [] = [] 
triParDelImpar (x:xs) 
	| mod x 2 == 0 = (x*3) : triParDelImpar xs
	| otherwise    = triParDelImpar xs 
