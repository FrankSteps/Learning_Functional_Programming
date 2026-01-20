{-
Calcular o número de combinações de m elementos pegos de um universo de n elementos. 
A fórmula das combinações é n! / m!(m-n)!.

Tente que sua função realize o menor número de multiplicações.
-}

main :: IO()
main = do 
    let n = 4
        m = 2
    print(combinatoria n m) 


combinatoria :: Integer -> Integer -> Integer
combinatoria n m
  | m < 0 || m > n = 0
  | m == 0 || m == n = 1
  | otherwise = product [n-m+1 .. n] `div` product [1 .. m]