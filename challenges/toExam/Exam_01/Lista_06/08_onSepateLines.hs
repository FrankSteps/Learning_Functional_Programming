{-
Escreva uma função 
onSeparateLines :: [String] -> String
que receba uma lista de strings e retorna um único string que quando apresentado mostra os strings da lista em linhas separadas. Por exemplo,
onSeparateLines ["Maria Pradera",
                 "é uma cantora espanhola.", 
                 "Canta românticas."]
deve retornar
 "Maria Pradera\né uma cantora espanhola.\nCanta românticas.\n"
-}

main :: IO()
main = do 
	let list = ["Alan Walker", "é um DJ americano.", "Toca pedradas"] 
	print(onSeparateLines list)

onSeparateLines :: [String] -> String
onSeparateLines list = concat [x ++ "\n" | x <- list]