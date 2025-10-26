{-

Questão 1:
    Usando guardas, defina uma função chamada sinal
que receba um número Int e que retorne 1, 0 ou -1, dependendo de se o valor é positivo, zero ou negativo, respectivamente.


Questão 3:
    Considerando a definição do exercício anterior, avalie manualmente as  expressões

    sinal (4-2*3)
    sinal (3^2 - 2*4)
    sinal (4*4 - 2^4)

resposta:

sinal (4 - 2*3)    retorna -1   por ser um valor negativo
sinal (3^2 - 2*4)  retorna  1   por ser um valor positivo
sinal (4*4 - 2^4)  retorna  0   por ser um valor nulo | 0
-}

main :: IO()
main = do
    let x = 2
    putStrLn("sinal: " ++ show(sinal x))

sinal :: Int -> Int
sinal x
    | x > 0     =  1
    | x < 0     = -1
    | otherwise =  0

