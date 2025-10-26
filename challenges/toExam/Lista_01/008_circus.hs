{-
    Na última semana do circo em Aracaju os ingressos estão com 50%de
desconto para menores de idade e idosos. Considere menor de idade até os 18 anos, inclusive, e idoso a partir dos 60 anos. Para o resto da população o desconto é de 10%. Defina uma função que receba a idade e o preço normal do ingresso, um Int e um Double, respectivamente. A função deve retornar o valor a ser pago.
-}

main :: IO()
main = do
    let idade = 60 -- idade
        ingrs = 30 -- ingresso

    putStrLn("O valor a ser pago pelo ingresso é de: " ++ show (ingresso idade ingrs) ++ "R$")

-- utilizei o mesmo artifício lógico da questão 006, mas já fazendo as devidas operações de desconto no return da função
ingresso :: Int -> Double -> Double
ingresso idade ingrs
    | idade <= 18 || idade >= 60  = ingrs / 2
    | otherwise                   = ingrs * 0.9
