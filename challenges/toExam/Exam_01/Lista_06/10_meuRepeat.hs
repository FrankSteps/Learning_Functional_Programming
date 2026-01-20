{-
Crie uma função que faça o mesmo que repeat
-}

main :: IO()
main = print(meuRepeat 5)

meuRepeat :: a -> [a]
meuRepeat elem = [elem | _ <- [1..]]