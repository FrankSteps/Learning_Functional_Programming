{-
Uma corretora de seguros cobra mais barato se o principal condutor do veículo é mulher e se tem mais de 40 anos. Caso contrário, o valor do seguro fica caro. Defina uma função que receba um valor booleano que indica se o condutor é homem ou mulher (True ou False, respectivamente), outro valor inteiro com a idade em anos do condutor. A função deve retornar um booleano que indique se o seguro vai ficar barato ou caro (True ou False, respectivamente).
-}

main :: IO()
main = do
    let
        ehHomem = True
        idade   = 20
    putStrLn("Vai ficar barato? " ++ show(corretora ehHomem idade))

corretora :: Bool -> Int -> Bool
corretora ehHomem idade
    | not ehHomem && idade > 40 = True   -- vai ficar barato
    | otherwise                 = False  -- vai ficar caro
