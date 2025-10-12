main :: IO ()

main = do
    let x = 3
        y = 4

    putStrLn("hipotenusa: " ++ show (hipotenuse x y))

hipotenuse :: Float -> Float -> Float
hipotenuse x y = sqrt((x*x) + (y*y))
