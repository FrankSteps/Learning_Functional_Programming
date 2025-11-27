{-
Dadas duas listas, uma do tipo String e outra do tipo 
nt, construa uma lista com pares do tipo (String, Int) 
de tal forma que cada elemento da primeira lista forme 
par com o correspondente elemento da segunda lista. 
Assim, por exemplo, para as listas 
["Maria", "Joana", "Pedro"] e [18, 20, 17] a lista final 
deverá ser [("Maria", 18), ("Joana", 20), ("Pedro", 17)].
-}

-- função principal
main :: IO()
main = putStrLn(show zipped)

-- lista de tuplas
zipped :: [(String, Int)]
zipped = zip nomes idade -- zip junta os elementos das duas listas
   where 
   	-- definindo as listas
    nomes = ["Maria", "Joana", "Pedro"]
    idade = [18, 20, 17]