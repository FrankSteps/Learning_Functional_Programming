{-
Uma estratégia para resolver problemas é primeiro lidar com simplificações do problema original. Neste exercício você deve definir uma função para calcular idade em anos, meses e dias. Antes de definir a solução completa, defina
Uma função que calcula a idade somente em anos completos, sem considerar meses e dias.
Uma função que calcula a idade em anos e meses completos, sem considerar dias.
A função requerida.
-}

main :: IO()
main = do
    let
        -- data atual :: Pode ser modificado posteriormente para pegar a data do dispositivo. Talvés fazer algo do tipo faça que a função deixe de ser pura
        ano_atual = 2025
        mes_atual = 11
        dia_atual = 6

        -- data de nascimento
        ano_natal = 2006
        mes_natal = 9
        dia_natal = 5

    -- mostrando os resultados
    putStrLn("primeiro resultado: " ++ show(idadeAno ano_atual ano_natal))
    putStrLn("segundo resultado:  " ++ show(idadeMes ano_atual mes_atual ano_natal mes_natal ))
    putStrLn("terceiro resultado: " ++ show(idade ano_atual mes_atual dia_atual ano_natal mes_natal dia_natal ))
    putStrLn("quarto resultado:   " ++ show(quantosDiasFaltam ano_atual mes_atual dia_atual ano_natal mes_natal dia_natal))


-- função que calcula a idade apenas em anos
idadeAno :: Int -> Int -> Int
idadeAno ano_atual ano_natal = ano_atual - ano_natal


-- função que calcula a idade em anos e em meses sem considerar os dias
idadeMes :: Int -> Int -> Int -> Int -> (Int, Int)
idadeMes ano_atual mes_atual ano_natal mes_natal =
    let
        anos = ano_atual - ano_natal
        meses = mes_atual - mes_natal

        (anos_ajustados, meses_ajustados)
            | meses < 0  = (anos - 1, meses + 12)
            | otherwise  = (anos, meses)
    in
        (anos_ajustados, meses_ajustados)


-- função que calcula a idade em anos, meses e dias
idade :: Int -> Int -> Int -> Int -> Int -> Int -> (Int, Int, Int)
idade ano_atual mes_atual dia_atual ano_natal mes_natal dia_natal =
    let
        anos = ano_atual - ano_natal
        meses = mes_atual - mes_natal
        dias = dia_atual - dia_natal

        -- ajustando os dias
        (meses_apos_dias, dias_ajustados)
            | dias < 0  = (meses - 1, dias + 30)
            | otherwise = (meses, dias)

        -- ajustando meses
        (anos_ajustados, meses_ajustados)
            | meses_apos_dias < 0 = (anos - 1, meses_apos_dias + 12)
            | otherwise           = (anos, meses_apos_dias)

    in
        (anos_ajustados, meses_ajustados, dias_ajustados)

-- função que calcula quantos dias faltam para o próximo aniversário
quantosDiasFaltam :: Int -> Int -> Int -> Int -> Int -> Int -> Int
quantosDiasFaltam ano_atual mes_atual dia_atual ano_natal mes_natal dia_natal =
    let
        -- verifica se o aniversário já passou
        passou
            | mes_atual > mes_natal                             = True
            | mes_atual == mes_natal && dia_atual >= dia_natal  = True
            | otherwise                                         = False

        -- define o próximo ano do aniversário
        proximAno
            | passou    = ano_atual + 1
            | otherwise = ano_atual

        -- converte as datas em "dias totais" (1 mês = 30 dias; 1 ano = 360 dias)
        totalAtual = ano_atual * 360 + mes_atual * 30 + dia_atual
        totalNiver = proximAno * 360 + mes_natal * 30 + dia_natal
    in
        totalNiver - totalAtual

