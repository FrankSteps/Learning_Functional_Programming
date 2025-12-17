{-
Defina uma função que aceite um natural n e devolva True se, e 
somente se, um ou mais valores dentre f 0, f 1, f 2, … f n é 
zero.
-}

--[Estava disponibilizado na questão 7 para testes]
f :: Int -> Int
f 0 = 8
f 1 = 44
f 2 = 17
f 3 = 2
f 7 = 0

main :: IO()
main = do 
    let n = 7
    print(ehZero n)

ehZero :: Int -> Bool
ehZero 0 = f 0 == 0
ehZero n = (f n == 0) || ehZero (n - 1)
