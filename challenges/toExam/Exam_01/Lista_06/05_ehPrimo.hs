{-
Defina uma função que verifique se um dado número é primo.
-}

main :: IO()
main = do
	let n = 7
	print(ehPrimo n)

ehPrimo :: Int -> Bool
ehPrimo n = lista == [1,n]
	where
		lista = [x | x <- [1..n], mod n x == 0]