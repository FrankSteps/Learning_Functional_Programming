{-
Escreva uma função que calcule
	1^3 + 2^3 + 3^3 +... + n^3
	n^3 + ... + 3^3 + 2^3 + 1^3
-}

main :: IO()
main = do 
    let n = 2
    print(expoente3 n)

expoente3 :: Int -> Int 
expoente3 0 = 0
expoente3 n = n^3 + expoente3(n-1)