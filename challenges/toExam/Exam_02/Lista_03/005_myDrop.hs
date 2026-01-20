{-
	Defina a função myDrop que faz o mesmo que a função do Prelude drop. 
	Tenha cuidado para que myDrop n xs retorne xs quando n < 0.
-}

main :: IO()
main = print(myDrop 3 [1,2,3,4,5,6,7])

myDrop :: Int -> [Int] -> [Int]
myDrop 0 _  = [] 
myDrop _ [] = []
myDrop n (x:xs) 
	| n < 0     = x:xs 
	| otherwise = myDrop (n-1) xs