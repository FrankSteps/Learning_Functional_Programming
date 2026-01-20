{-
	A lista em ordem decrescente com os múltiplos 
	de 3 que estão entre 100 e 1000. 
-}

main :: IO()
main = do
	print(multiplosDec)

multiplosDec :: [Int]
multiplosDec = reverse [x | x <- [100..1000], mod x 3 == 0]