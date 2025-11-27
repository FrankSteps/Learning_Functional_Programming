{-
	Uma função que retorne uma lista com os múltiplos
	de números entre 100 e 1000
-}

main :: IO()
main = do 
	print(multiplos)

multiplos :: [Int]
multiplos = [x | x <- [100..1000], mod x 3 == 0]