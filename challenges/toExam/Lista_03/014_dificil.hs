{-
(Difícil ☠️)

Num minimercado, um quilo de pão custa $4.50, um litro de leite custa $5,30 e uma garrafa de vinho $25.0. O minimercado aplica os seguintes descontos

Se o peso do pão for maior ou igual a um quilo, haverá um desconto de 5% no valor total do pão.

A cada três litros de leite, o terceiro litro têm desconto de 10%.

A cada três garrafas de vinho, a segunda sai gratis.

Defina uma função que receba as seguintes informações sobre uma compra: o peso do pão, a quantidade de litros de leite e a quantidade de garrafas de vinho.

A função deverá retornar uma string descrevendo os dados da conta da compra. A string deverá conter o valor de cada item da compra, o valor do desconto do item, se houver, e o valor total da compra. Adicionalmente, neste string que descreve a conta, se o valor da compra de um tipo de item for zero, nada deverá ser apresentado sobre o item. Similarmente se o valor de um dado desconto for zero, nada deverá ser apresentado.

Por exemplo, se a compra incluir meio quilo de pão e quatro litros de leite, aplicando a função putStr ao string retornado pela função deverá se obter:

Pão --------------------- R$ 2.25
Leite ------------------- R$ 21.2
Desconto no leite ------- R$ 0.53
Valor Total ------------- R$ 22.92

Observe que nada aparece com relação a vinhos, pois não foi comprado nenhum vinho. Observe também que nada aparece com relação a desconto no pão, pois nesta compra não há desconto sobre o pão.



lembrando da questão da primeira lista, questão 7:
quant preco = fromIntegral (quant - (div quant 3)) * preco
-}

import Text.Printf


main :: IO()
main = do
    let
        peso_do_pao = 1
        leite_litro = 1
        vinho_garfs = 1

    putStrLn(minimercado peso_do_pao leite_litro vinho_garfs)


minimercado :: Float -> Float -> Float -> String
minimercado peso_do_pao leite_litro vinho_garfs =
    let
        -- parte responsável pelo cálculo do valor do pão com descontos
        preco_pao = peso_do_pao * 4.5

        valor_pao
            | peso_do_pao >= 1 = preco_pao * 0.95
            | otherwise        = preco_pao

        desconto_pao
            | peso_do_pao >= 1 = preco_pao * 0.05
            | otherwise        = 0


        -- parte responsável pelo cálculo do valor do leite com descontos
        desconto_leite
            | leite_litro >= 3 = (leite_litro / 3) * 5.3 * 0.1
            | otherwise        = 0

        valor_leite
            | leite_litro < 3  = leite_litro * 5.3
            | otherwise        = (leite_litro * 5.3) - desconto_leite


        -- parte responsável pelo cálculo do valor do vinho com descontos
        desconto_vinho
            | vinho_garfs >= 3 = (vinho_garfs / 3) * 25.0
            | otherwise        = 0

        valor_vinho
            | vinho_garfs < 3  = vinho_garfs * 25.0
            | otherwise        = vinho_garfs * 25.0 - desconto_vinho


        -- parte responsável pelo valor total
        total = valor_pao + valor_leite + valor_vinho


        -- Parte responsável pelo desenvolvimento das strings
        -- string do pao
        str_pao =
            if valor_pao > 0
               then "Pão --------------------- R$ " ++ printf "%.2f" valor_pao ++ "\n"
               else ""

        str_desc_pao =
            if desconto_pao > 0
               then "Desconto no Pão ------- R$ " ++ printf "%.2f" desconto_pao ++ "\n"
               else ""


        -- string do leite
        str_leite =
            if valor_leite > 0
               then "Leite ------------------- R$ " ++ printf "%.2f" valor_leite ++ "\n"
               else ""

        str_desc_leite =
            if desconto_leite > 0
               then "Desconto no Leite ------- R$ " ++ printf "%.2f" desconto_leite ++ "\n"
               else ""


        -- string do vinho
        str_vinho =
            if valor_vinho > 0
               then "Vinho ------------------- R$ " ++ printf "%.2f" valor_vinho ++ "\n"
               else ""

        str_desc_vinho =
            if desconto_vinho > 0
               then "Desconto no Vinho ------- R$ " ++ printf "%.2f" desconto_vinho ++ "\n"
               else ""

    in
        str_pao ++ str_desc_pao
        ++ str_leite ++ str_desc_leite
        ++ str_vinho ++ str_desc_vinho
        ++ "Valor Total ------------- R$ " ++ printf "%.2f" total



