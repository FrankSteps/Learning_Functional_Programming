{-
Defina uma função que receba três números e calcule a mediana. A mediana é o valor central quando listamos os três números por ordem de grandeza.
-}

main :: IO()
main = do
    let x = 0
        y = 0
        z = 0
    putStrLn("mediana: " ++ show (mediana  x y z))

mediana :: Int -> Int -> Int  -> Int
mediana x y z = x + y + z - minimum[x, y, z] - maximum[x, y, z]

