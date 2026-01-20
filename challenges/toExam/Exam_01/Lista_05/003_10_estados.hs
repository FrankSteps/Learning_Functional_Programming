{-
Dada uma lista de (Estados, Capitais), construa um par com duas 
listas, onde o primeiro elemento é a lista de estados e o 
segundo elemento a de capitais.
-}

main :: IO()
main = putStrLn(show estados) 

-- separando uma tupla de listas com unzip
estados :: ([String], [String])
estados = unzip estCap
  where
    estCap = [ ("Sergipe", "Aracaju"), 
               ("Sao Paulo", "Sao Paulo"), 
               ("Rio de Janeiro", "Rio de Janeiro") ]
