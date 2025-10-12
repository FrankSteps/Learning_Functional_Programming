main :: IO ()

main = do
    --definindo os valores
    let x = 3
        y = 5
        r = 7

    --distribuindo os valores para as funções e mostrando o valor que elas retornam
    putStrLn("Retangulo: " ++ show (retang x y))
    putStrLn("Triangulo: " ++ show (triang x y))
    putStrLn("Círculo:   " ++ show (circul r))


-- função que calcula a área de um retângulo qualquer
retang :: Int -> Int -> Float
retang x y = fromIntegral(x*y)


-- função que calcula a área de um triângulo retângulo
triang :: Int -> Int -> Float
triang x y = fromIntegral(x*y)/2


-- função que calcula a área de um círculo
circul :: Int -> Float
circul r = fromIntegral(r*r)*pi




