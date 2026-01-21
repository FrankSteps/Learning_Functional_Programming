{-
	Sem usar ranges, defina a função
	intervaloDeEntaoAte :: Int -> Int -> Int -> [Int]
	tal que intervaloDeEntaoAte m n p seja igual com o range [m,n..p]. 

	[passo, valorAtual, limite]
	[  m        n          p  ]

	[2,     0,          10]   → inclui 0
	[2,     0 + 2,      10]   → inclui 2
	[2,     2 + 2,      10]   → inclui 4
	[2,     4 + 2,      10]   → inclui 6
	[2,     6 + 2,      10]   → inclui 8
	[2,     8 + 2,      10]   → inclui 10
	[2,     10 + 2,     10]   → **para**
-}

main :: IO()
main = print(intervaloDeEntaoAte 5 10 30)

intervaloDeEntaoAte :: Int -> Int -> Int -> [Int]
intervaloDeEntaoAte m n p
	| m == 0     = []
	| n > p + m  = []
	| otherwise  = (n-m) : intervaloDeEntaoAte m (n+m) p