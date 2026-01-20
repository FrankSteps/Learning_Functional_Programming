{-
	Sem usar mod, use uma função meuMod que faça o mesmo que a função mod
-}

main :: IO()
main = print(meuMod 3 7)


meuMod :: Int -> Int -> Int 
meuMod m n 
	| m < n     = m 
	| otherwise = meuMod (m-n) n