{-
    Defina uma função que, dado um inteiro, retorne um string que informe se o
número é positivo, negativo ou nulo. Caso não for nulo, o string deverá conter também a magnitude do número. Por exemplo, para o valor 15 a função deverá retornar “Positivo 15”, para o valor -15 deverá retornar “Negativo 15” e para 0 deverá retornar “Nulo”.
-}

main :: IO()
main = do
    let num = 5
    putStrLn(magnit num)

-- utilizei o mesmo artifício lógico das questões 006 e 008, mas desta vez montando o string completo direto no return (inédito nos programas que desenvolvi em Haskell até agora - utilizarei mais vezes)
magnit :: Int -> String
magnit num
    | num > 0    = show num ++ " " ++ "Positivo"
    | num < 0    = show num ++ " " ++ "Negativo"
    | otherwise  = "Nulo"

