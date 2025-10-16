{-
    Defina duas funções, uma para transformar graus fahrenheit para celsius e a outra que faz o inverso

    equação:

    Tc / 5 = Tf - 32 / 9
-}

--Usando a biblioteca printf para limitar o número de casas decimais do double/float que serão mostradas na string

import Text.Printf (printf)

main :: IO()
main = do
    let temp = 200

    -- imprimindo as informações na tela
    putStrLn(show temp ++ "°C em °F é " ++ printf "%.2f" (toFah temp) ++ "°F")
    putStrLn(show temp ++ "°F em °C é " ++ printf "%.2f" (toCel temp) ++ "°C")


--função para a conversão para celsius
toCel :: Double -> Double
toCel temp = (temp - 32)*5/9

--função para a conversão para fahrenheit
toFah :: Double -> Double
toFah temp = (temp * 5/9) + 32
