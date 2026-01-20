{-
	Defina uma função chamada "myInit" que retorna o primeiro elemento de uma lista
-}

main :: IO()
main = print(myInit [1,2,3,4,5,6,7])

myInit :: [Int] -> [Int] 
myInit [_]    = []
myInit []     = []
myInit (x:xs) = x : myInit xs 