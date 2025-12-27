{-
	Triplicar todos os elementos de uma lista de inteiros.
-}

main :: IO()
main = print(triplicar([1,2,3,4,5,6,7]))

triplicar :: [Int] -> [Int]
triplicar [] = []
triplicar (x:xs) = (x*3) : triplicar xs