{-
"char inglês" ksksksks

Defina uma função que permita verificar se um caractere é uma letra minúscula do alfabeto inglês
-}

main :: IO()
main = do
    let c = 'B'
    putStrLn("A letra: '" ++ [c] ++ "'" ++ charIngles c)

-- função responsável por verificar os intervalos em que estão concentrados os caracteres de letras minúsculas e maiúsculas do alfabeto inglês e retornar o seu respectivo campo
charIngles :: Char -> String
charIngles c
    | c >= 'a' && c <= 'z' = " é mínuscula"
    | c >= 'A' && c <= 'Z' = " é maiúscula"
    | otherwise            = " não existe e/ou não está definida"
