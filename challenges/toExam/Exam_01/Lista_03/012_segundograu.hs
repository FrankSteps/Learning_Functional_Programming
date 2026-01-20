{-
    Defina uma função que receba os coeficientes a, b e c de uma equação de segundo grau.

    ax² + bx + c e que retorne uma das sequintes strings

    "Não é uma equação do segundo grau"
    "Não tem solução real"
    "A única solução real é R"
    "As soluções reais são R1 e R2"

    onde R, R1 e R2 são raizes da equação, quando existirem. A primeira string deve ser retornada quando a  é igual a 0. Qualquer uma das outras deve ser retornada de acordo com o número de raízes que a equação tem
-}

main :: IO()
main = do
    let a = 0
        b = 0
        c = 0
    putStrLn(equacao a b c)

equacao :: Float -> Float -> Float -> String
equacao a b c
    | a == 0      = "Não é uma equação do segundo grau" ++ show graum
    | delta >= 0  = "As soluções reais são: " ++ show raiz_um ++ "e" ++ show raiz_dois
    | delta < 0   = "Não tem solução real"
    where
        delta       = sqrt(b*b - (4 * a * c))
        graum       = c*(-1)/b
        raiz_um     = (b*(-1) + delta)/2
        raiz_dois   = (b*(-1) - delta)/2
