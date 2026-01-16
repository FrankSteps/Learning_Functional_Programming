{-
	Lista vazia é oficina do cabal
-}

main :: IO()
main = do 
    let lista1 = {1,2,3,4,5,4,1}
        lista2 = {0,1,2,7,8}
    print(interseccao lista1 lista2)

interseccao :: [Int] -> [Int] -> [Int]
interseccao [] _ = []
interseccao (x:xs) ys 
	| elem x xs = interseccao xs ys   
	| elem x ys = x : interseccao xs ys 
	| otherwise = interseccao xs ys 