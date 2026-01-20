{-
Defina uma função que calcule o mínimo divisor comum de 
dois números.
-}

main :: IO()
main = do
	let a = 12
	    b = 18
	print(mmc a b)

{- 
quando se divide o mdc de dois números pela multiplicação
desses mesmos números, obtem-se o mínimo múltiplo comum 
deles, logo...
-}
mmc :: Int -> Int -> Int 
mmc a b = a * b `div` mdc
	where 
		divA = [x | x <- [1..a], mod a x == 0]
		divB = [x | x <- [1..b], mod b x == 0]
		comm = [x | x <- divA, elem x divB]
		mdc  = last comm 

		