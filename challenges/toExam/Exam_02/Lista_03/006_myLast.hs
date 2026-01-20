{-
	Defina uma função chamada "myLast" que retorna o último elemento de uma lista

	x:xs 
	[1,2,3,4]
	[2,3,4]
	[3,4]
	[4]
-}

main :: IO()
main = print(myLast [1,2,3,4,5,6,7])

myLast :: [Int] -> Int 
myLast [x]    = x 
myLast (x:xs) = myLast xs   
