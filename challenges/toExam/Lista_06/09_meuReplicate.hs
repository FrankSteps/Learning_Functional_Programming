{-
Crie uma função que faça o mesmo que o replicate
-}

main :: IO()
main = print(meuReplicate 4 6)

meuReplicate :: Int -> a -> [a]
meuReplicate n elem = [elem | _ <- [1..n]]