{-
    Defina uma função que receba um caractere. Caso o caractere for uma letra maiúscula do alfabeto inglês a função deverá
retornar a correspondente letra minúscula, caso contrário a função retorna o próprio caractere. Na definição, só pode usar as funções pré-definidas toEnum e fromEnum.

anotações:
    Matematicamente, a diferença entre o código ASCII dos caracteres de 'A' à 'Z' e de 'a' à 'z' é de 32.

    logo concluí-se:
        minúsculo = char + 32
        maiúscula = char - 32
-}

main :: IO ()
main = do
    let char = 'B'
    putStrLn[matching char]


-- função responsável por converter os valores do char por intermédio das funções toEnum e fromEnum
matching :: Char -> Char
matching char
    | char >= 'a' && char <= 'z' = toEnum(fromEnum char - 32)
    | char >= 'A' && char <= 'Z' = toEnum(fromEnum char + 32)
    | otherwise                  = char
