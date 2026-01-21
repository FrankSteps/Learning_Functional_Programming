{-
Sem usar ranges, defina a função
	intervaloDeAte :: Int -> Int -> [Int]
tal que intervaloDeAte m n seja igual com o range [m..n].

0 3 -> [1,2,3]
-}

main :: IO()
main = print(intervaloDeAte 3 7)

intervaloDeAte :: Int -> Int -> [Int]
intervaloDeAte n m
	| n > m     = []
	| otherwise = n : intervaloDeAte (n+1) m