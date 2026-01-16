{-
	Reproduzindo a função mod 
-}

main :: IO()
main = print(recuMod 3 7)

recuMod :: Int -> Int -> Int 
recuMod m n 
	| m < n     = m 
	| otherwise = recuMod (m-n) n