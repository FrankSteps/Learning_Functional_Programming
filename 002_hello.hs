{-
    Estudando a estrutura base de um programa escrito em Haskell
-}

-- Declarando a função main como a principal do programa
main :: IO ()

-- chamando as funções por sequência e não por criação
main = do
    helloF
    helloH
    helloW

-- funções para imprimir uma string na tela
helloF :: IO ()
helloF = putStrLn "Hello, Frank Steps"

helloH :: IO ()
helloH = putStrLn "Hello, Haskell"

helloW :: IO ()
helloW = putStrLn "Hello, World"
