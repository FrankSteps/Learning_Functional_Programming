{-
Dados a, b e c, os três lados de um triângulo, defina uma função para calcular a área utilizando a fórmula

area= rais quadrada de: s(s-a)(s-b)(s-c)
onde

s = a+b+c / 2

A função deve retornar zero no caso dos três lados não formarem efetivamente um triângulo.

-}

main :: IO()
main = do
    let lado_a = 3
        lado_b = 4
        lado_c = 5

    putStrLn("Área do triangulo: " ++ show(triangulo lado_a lado_b lado_c))

triangulo :: Float -> Float -> Float -> Float
triangulo lado_a lado_b lado_c
    | invalido  = 0
    | otherwise = area_triangulo
    where
        area_triangulo = sqrt (s * (s - lado_a) * (s - lado_b) * (s - lado_c))
        s = (lado_a + lado_b + lado_c)/2
        invalido = (lado_a + lado_b <= lado_c) || (lado_a + lado_c <= lado_b) || (lado_b + lado_c <= lado_a)
