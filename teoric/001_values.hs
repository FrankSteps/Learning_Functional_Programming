{-
    Os tipos de valores em Haskell:
-}

-- cabeçalho - definindo a variável como do tipo input output "IO"; análogo à função main do C/C++
main :: IO()
main = do
    -- mostrando os valores - "show" convete as variáveis em string e "++" concatena
    putStrLn("Int:     " ++ show x)
    putStrLn("Integer: " ++ show y)
    putStrLn("Float:   " ++ show z)
    putStrLn("Double:  " ++ show d)
    putStrLn("Char:    " ++ show c)

    -- não precisa de conversão - usa apenas o "++" para a concatenação
    putStrLn("String:  " ++ s)

-- Inteiro de tamanho fixo
x :: Int
x = 42

-- Inteiro de precisão arbitrária (Cresce até onde houver memória)
y :: Integer
y = 999999999999999999999999

-- Float é um número de ponto flututante de precisão simples
z :: Float
z = 3.14

-- Double é um número de ponto flutuante de dupla precisão. (Mais conveniente em cálculos precisos)
d :: Double
d = 3.141592

-- Char é um único caractere
c :: Char
c = 'F'

-- String é uma lista de caracteres (Mesma interpretação do C)
s :: String
s = "Frank Steps"
