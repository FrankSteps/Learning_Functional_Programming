{-
Defina uma função que calcule o máximo divisor comum de 
dois números.
-}

main :: IO()
main = do
    let a = 12
        b = 18
    print (mdc a b)

mdc :: Int -> Int -> Int 
mdc a b = last comm
    where 
		divA = [x | x <- [1..a], mod a x == 0]
		divB = [x | x <- [1..b], mod b x == 0]
		comm = [x | x <- divA, elem x divB]