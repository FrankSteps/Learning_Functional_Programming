{-
Escreva uma expressão para gerar uma lista com todos os números de 
1 a 100 exceto os múltiplos de 5.
-}

main :: IO()
main = print(excMult5)

excMult5 :: [Int]
excMult5 = [x | x <- [1..100], mod x 5 /= 0]