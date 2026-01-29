{-
	Defina a função oneLookupSecond que retorna a primeira componente do 
	primeiro par da lista cuja segunda componente é igual ao item. Qual é 
	o tipo mais geral da função?
-}

main :: IO()
main = print(oneLookUpSecond 2 [(1,2), (3,4)])

oneLookUpSecond :: Eq b => b -> [(a,b)] -> a
oneLookUpSecond _ [] = error("error")
oneLookUpSecond item ((x,y):xs)
    | y == item = x        
    | otherwise = oneLookUpSecond item xs  

