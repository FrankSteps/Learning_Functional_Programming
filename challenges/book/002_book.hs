{-
    Fornecidos três valores diferentes a, b e c, elabore uma função que retorne quanto desses números é maior que a média aritmética entre eles
-}

main :: IO ()

main = do
    let a = 1
        b = 1
        c = 1
        m = media a b c

    putStrLn("média: " ++ show m)
    putStrLn("média: " ++ show (condc a b c m))

media :: Float -> Float -> Float -> Float
media a b c = (a + b + c)/3

condc :: Float -> Float -> Float -> Float -> Int
condc a b c m = fromEnum(a > m) + fromEnum(b > m) + fromEnum(c > m)


