{-
	Considere a seguinte função
		misterio y x = [ show z | z <- x, elem z y ]
	Qual é eu seu tipo mais geral?
-}

type EqShow a = (Eq a, Show a) -- <- mais bonitinho hehe


-- função principal para testes
main :: IO()
main = print(misterio [2,2,2] [1,2,3,4,5,2,3,5,6,7,2])


-- Sim, por algum motivo existe a forma de você colocar duas type classes no mesmo lugar
misterio :: EqShow a => [a] -> [a] -> [String]
misterio _ [] = []
misterio [] _ = []
misterio y x  = [ show z | z <- x, elem z y ]