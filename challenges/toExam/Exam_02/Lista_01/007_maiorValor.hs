{-
Para este e o próximo exercício, assuma que no seu script há uma 
definição para uma função f :: Int -> Int. Para propósito de testes 
pode usar estas definições:

[imagem] - está escrito neste programa 

Defina uma função que aceite um natural n e devolva o maior valor
dentre f 0, f 1, f 2, … f n.
-}

--[Estava disponibilizado na questão para testes]
f :: Int -> Int
f 0 = 8
f 1 = 44
f 2 = 17
f 3 = 2
f _ = 0

main :: IO()
main = do 
    let n = 3
    print(maiorValor n)

maiorValor :: Int -> Int
maiorValor 0 = f 0
maiorValor n = max (maiorValor (n - 1)) (f n)
