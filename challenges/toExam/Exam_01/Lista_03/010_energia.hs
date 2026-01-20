{-
Numa cidade o valor da KWh de energia varia da forma mostrada abaixo.
Até 99 KWh: R$1.35
100 até 299 KWh: R$1.55
300 até 574 KWh: R$1.75
Maior ou igual a 575 KWh: R$2.15
Sabe-se que quando o consumo é maior que 300KWh é cobrado uma taxa de 10% no valor da conta e o preço mínimo de qualquer conta é R$35. Escreva uma função para calcular o valor de uma conta elétrica.
-}

main :: IO()
main = do
    let kwh_energia = 100
    putStrLn("valor da conta elétrica: " ++ show(contaEletrica kwh_energia))

contaEletrica :: Float -> Float
contaEletrica kwh_energia = max 35 valor
    where
        valor
            | kwh_energia < 100 = kwh_energia * 1.35
            | kwh_energia < 300 = kwh_energia * 1.55
            | kwh_energia < 575 = (kwh_energia * 1.75) * 1.10
            | otherwise         = (kwh_energia * 2.15) * 1.10
