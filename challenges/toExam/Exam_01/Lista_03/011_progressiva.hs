{-
Redefina a função da questão anterior considerando que a tabela de preços é progressiva. Isto quer dizer que, por exemplo, se o consumo for 150 KWh, então deste total de KWh, para os primeiros 99 KWh usa-se a tarifa de R$1.35 por KWh e para os restantes 51 KWh usa-se a tarifa de R$1.55.
-}

main :: IO()
main = do
    let consumo = 100
    putStrLn("valor da conta elétrica: " ++ show(progressiva consumo))

progressiva :: Float -> Float
progressiva consumo =
    let
        valor
            | consumo <= 99  = consumo * 1.35
            | consumo <= 299 = (99 * 1.35) + (consumo - 99) * 1.55
            | consumo <= 574 = (99 * 1.35) + (200 * 1.55) + (consumo - 299) * 1.75
            | otherwise      = (99 * 1.35) + (200 * 1.55) + (275 * 1.75) + (consumo - 574) * 2.15

        haddad = -- o valor com a taxa kk
            if consumo > 300
            then valor * 1.10
            else valor

        valorFinal = max 35 haddad

    in
        valorFinal
