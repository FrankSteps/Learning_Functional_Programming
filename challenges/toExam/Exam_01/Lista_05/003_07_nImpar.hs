{-
Dado um inteiro n positivo, calcular o produto dos números ímpares de 1 até n.
-}

main :: IO ()
main = do
    let n = 3
    print (nImpar n)

nImpar :: Int -> Int 
nImpar n = product list 
    where
        list = [x | x <-[1..n], odd x]  