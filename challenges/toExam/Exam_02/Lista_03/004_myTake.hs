{-
	Considere a definição de myTake vista em aula. O que acontece quando 
	o primeiro argumento é negativo? Redefina myTake de tal forma que myTake 
	n xs retorne [] quando n < 0.
-}

main :: IO()
main = print(myTake 3 [1,2,3,4,5,6,7])

myTake :: Int -> [Int] -> [Int] 
myTake _ [] = []
myTake n (x:xs)
	| n <= 0    = [] 
	| otherwise = x : myTake (n-1) xs  