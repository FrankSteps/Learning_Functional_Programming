{-
(Pouco mais difícil que as anteriores) Escreva uma função que, 
dado um natural n, calcule a raiz quadrada inteira de n, ou 
seja, calcule o maior natural cujo quadrado é menor ou igual a n.

notas::
Dado um número natural n, a raiz quadrada inteira de n é o 
número natural k tal que:

k^2 ≤ n < (k+1)^2 
-}

main :: IO()
main = do
    let n = 2
    print(sqRoot n)

sqRoot :: Int -> Int
sqRoot n = aux 0
  where
    aux k
      | (k + 1)^2 > n = k
      | otherwise    = aux (k + 1)
