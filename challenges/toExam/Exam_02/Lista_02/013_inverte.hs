{-
	Inverter uma lista de inteiros.

	[1,2,3] = [1] ++ [2,3]
	inverte([2,3]) ++ [1]  = [3,2] ++ 1 = [3,2,1]
-}

main :: IO()
main = print(inverte [0,1,2,3,4,5,6])

inverte :: [Int] -> [Int]
inverte [] = []
inverte (x:xs) = inverte xs ++ [x]
