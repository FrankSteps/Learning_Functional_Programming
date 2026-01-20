{-
Escreva uma função que receba um inteiro e retorne 
a lista com todos seus divisores.
-}

main :: IO()
main = do
	let n = 0
	print(qtDiv n)

qtDiv :: Int -> [Int]
qtDiv n = [x | x <- [1..n], mod n x == 0]