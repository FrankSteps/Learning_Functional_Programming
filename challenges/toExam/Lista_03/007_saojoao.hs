{-
Defina uma função que calcule quantos dias faltam para o próximo São João. A função receberá como entradas três inteiros correspondentes ao dia, mês e ano atuais. A solução deve considerar que um ano pode ser bissexto.

24/06
-}

main :: IO()
main = do
    let ano = 1900
        mes = 0
        dia = 0
    putStrLn(bissexto ano)

bissexto :: Int -> Int -> Int -> String
bissexto ano mes dia
    |
    |
    where
        anoBissexto = (ano `mod` 4 == 0) && ((ano `mod` 100 /= 0) || (ano `mod` 400 == 0))


