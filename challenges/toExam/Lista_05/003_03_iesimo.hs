{-
Retornar o i-ésimo elemento de uma lista 
-}

main :: IO()
main = do
    let i = 5
    print(iesimo i)

iesimo :: Int -> Int 
iesimo i = [8,5,7,9,5,2] !! i 