{-
	Considere a seguinte função
		zip' [] ps = []
		zip' ps [] = []
		zip' (p:ps) (q:qs) = (p, q) : zip' qs ps
	O que ela calcula? Qual é seu tipo mais geral?
-}

main :: IO()
main = print(zip' [1,2,3,4] [True, True, False, True])

zip' :: [p] -> [q] -> [(p, q)]
zip' [] ps = []
zip' ps [] = []
zip' (p:ps) (q:qs) = (p, q) : zip' ps qs