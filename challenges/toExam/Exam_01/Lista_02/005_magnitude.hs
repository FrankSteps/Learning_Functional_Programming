{-
    Usando guardas, defina uma função que, dado um inteiro, retorne uma string que informe se o número é positivo, negativo ou nulo. Caso não seja nulo, o string deverá conter também a magnitude do número. Por exemplo, para o valor 15 a função deverá retornar “Positivo 15”, para o valor -15 deverá retornar “Negativo 15” e para 0 deverá retornar “Nulo”
-}


main :: IO()
main = do
    let num = 5
    putStrLn(magnit num)

magnit :: Int -> String
magnit num
    | num > 0    = "Positivo " ++ show num
    | num < 0    = "Negativo " ++ show (abs num)
    | otherwise  = "Nulo"
