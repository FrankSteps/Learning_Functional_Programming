{-
Chama-se ano bissexto o ano ao qual é acrescentado um dia extra, ficando ele com 366 dias, um dia a mais do que os anos normais de 365 dias, ocorrendo a cada quatro anos, exceto anos múltiplos de 100 que não são múltiplos de 400. Defina uma função que, dado um ano, indique se este é bissexto.

-- Um ano válido é considerado bissexto se, e somente se, for divisível por 4 e (não for divisível por 100 ou for divisível por 400).

-- Um ano é considerado válido se, e somente se, o mesmo pertencer ao conjunto dos números inteiros e for maior ou igual a 1
-}

main :: IO()
main = do
    let ano_teste = 1900
    putStrLn(bissexto ano_teste)

bissexto :: Int -> String
bissexto ano_teste
    | anoBissexto = "É um ano bissexto"
    | otherwise   = "Não é um ano bissexto"
    where
        anoBissexto = (ano_teste `mod` 4 == 0) && ((ano_teste `mod` 100 /= 0) || (ano_teste `mod` 400 == 0))
