{-
Escreva uma função que receba uma lista e que devolva 
os seus elementos ímpares triplicados.
-}

main :: IO()
main = do 
	let lista = [1,2,3,4,5,6] 
	print(imparTrip lista)

imparTrip :: [Int] -> [Int]
imparTrip list = [x*3 | x <- list, mod x 2 /= 0]