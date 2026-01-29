{-
	Considere a seguinte função
		shift ((x, y), z) = (x, (y, z))
	Qual é o seu tipo mais geral?
-}

main :: IO()
main = print(shift ((1,2), 3)

shift :: ((a, b), c) -> (a, (b, c))
shift ((x,y), z) = (x, (y,z))