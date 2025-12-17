{-
Escreva uma função que calcule
	2^0 + 2^1 + 2^2 +...+ 2^n

	2^n + ... + 2^2 + 2^1 + 2^0
-}

main :: IO()
main = do 
    let n = 2
    print(expoenteN n)

expoenteN :: Int -> Int 
expoenteN 0 = 1
expoenteN n = 2^n + expoenteN(n-1)
