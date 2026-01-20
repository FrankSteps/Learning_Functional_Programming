{-
A Locadora de Veículos Eudora lançou uma grande promoção esse mês: pagando apenas R$ 90 por diária, o cliente pode alugar um carro de passeio. Para cada diária, o cliente recebe uma cota de quilometragem de 100 Km. Cada quilômetro a mais custará uma taxa extra de R$ 12. Escreva uma função que receba como entrada a quantidade de dias e a quilometragem total rodada por um cliente dessa locadora e retorne o valor total a ser pago.
-}

main :: IO()
main = do
    let
        dias_veiculos = 1
        km_veiculos   = 100
    putStrLn("O preço total a pagar é de: " ++ show(locadora km_veiculos dias_veiculos))

locadora :: Int -> Int -> Int
locadora km_veiculos dias_veiculos
    | km_veiculos <= dias_veiculos*100 = 90 * dias_veiculos
    | otherwise      = 90 * dias_veiculos + (km_veiculos - dias_veiculos * 100) * 12
