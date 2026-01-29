{-
	Defina uma função ocorrencias que pegue um item x e uma lista xs de itens 
	e retorne o número de vezes que x ocorre dentro de xs. Qual é o tipo mais 
	geral da sua função? 
-}

main :: IO()
main = print(ocorrencias 1 [1,2,3,4,5,1])

ocorrencias :: Eq a => a -> [a] -> Int
ocorrencias _ [] = 0
ocorrencias a (x:xs)
    | x == a    =  1 + ocorrencias a xs
    | otherwise = ocorrencias a xs 