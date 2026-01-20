{-
di'vinho'dade

Um supermercado está com oferta na compra de vinhos. Na compra de três garrafas paga-se apenas duas. Defina uma função que receba a quantidade de garrafas de vinho compradas e o preço individual de cada garrafa, sem descontos, e calcule o valor total a pagar.


- div quant de garrafas 3

-}

main :: IO()
main = do
    let quant = 200
    let preco = 100
    putStrLn("Resultado: " ++ show (diVinhoDade quant preco))

diVinhoDade :: Int -> Float -> Float
diVinhoDade quant preco = fromIntegral (quant - (div quant 3)) * preco


