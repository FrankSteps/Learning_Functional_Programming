{-
	Este arquivo funciona como uma biblioteca em Haskell
	Seu funcionamento é semelhante ao .h do C/C++

	Aqui se possui duas funções podem ser importadas para outro arquivo .hs para serem usadas.
	Esta configuração permite maior organização no código. 
-}

module Paridade.Paridade (paridade, somaComDois) where

-- verificar se a função é par ou não
paridade :: Int -> Bool 
paridade n = mod n 2 == 0 

-- retorna o valor somado com 2
somaComDois :: Int -> Int
somaComDois n = n + 2