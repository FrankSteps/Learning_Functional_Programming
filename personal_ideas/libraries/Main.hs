{-
	Este arquivo é um teste para usar o arquivo Paridade.hs e mostrar a sua aplicação
-}

module Main where 

-- importando as bibliotecas que estão no arquivo Paridade.hs
import Paridade.Paridade (paridade)
import Paridade.Paridade (somaComDois)

-- função principal 
main :: IO()
main = do 
    let n = 3
    -- condicional para apontar se a função paridade retornou como par ou ímpar
    if paridade n 
        then putStrLn(show n ++ " é um número par")
        else putStrLn(show n ++ " é um número ímpar")
    -- mostra o resultado da função somaComDois
    putStrLn("Seu número somado com dois é " ++ show(somaComDois n))