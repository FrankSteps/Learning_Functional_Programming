{-
	Defina a função oneLookupFirst que pega uma lista de pares e um item. 
	Digamos que o tipo dos pares é (a, b), e que o tipo do item é a. A 
	função retorna a segunda componente do primeiro par da lista cuja 
	primeira componente é igual ao item. Qual é o tipo mais geral da 
	função?
-}

main :: IO()
main = print(oneLookUpFirst 3 [(1,2), (3,2)])

oneLookUpFirst :: Eq a => a -> [(a, b)] -> b
oneLookUpFirst _ [] = error("error")
oneLookUpFirst item ((x,y):xs)
    | x == item = y          
    | otherwise = oneLookUpFirst item xs 