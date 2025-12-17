{-
Defina a função multiplica que multiplica dois números. 
Não pode usar o operador (*), mas pode usar (+).
-}

main :: IO()
main = do 
    let a = 3 
        b = 7
    print(multiplica a b)

multiplica :: Int -> Int -> Int 
multiplica a 0 = 0
multiplica a b = a + multiplica(b-1) a