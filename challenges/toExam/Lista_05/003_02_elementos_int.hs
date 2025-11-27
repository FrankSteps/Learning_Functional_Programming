{-
Calcular quantos dígitos têm um número inteiro.
-}

main :: IO()
main = do 
    let x = 123552
    print(inteiroLista x)

inteiroLista :: Int -> Int
inteiroLista x = length [read [x] :: Int | x <- show x]
