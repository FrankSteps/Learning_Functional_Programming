{-
Calcular a média aritmética de uma lista de números.
-}

main :: IO()
main = print(media)

media :: Float
media = fromIntegral sumList / fromIntegral lenList
    where 
        list    = [8,8,8]
        sumList = sum list 
        lenList = length list