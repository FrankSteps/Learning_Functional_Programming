{-
	Triplicar somente os pares, manter os outros intactos.
-}

main :: IO()
main = print(triplicaPar([1,2,3,4,5,6,7]))

triplicaPar :: [Int] -> [Int]
triplicaPar [] = []
triplicaPar (x:xs)
	| mod x 2 == 0 = (x*3) : triplicaPar xs
	| otherwise    = x : triplicaPar xs 