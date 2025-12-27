{-
	Dada uma lista de inteiros, verificar se a lista têm elementos repetidos. 
	Se houver alguma repetição na lista a função retorna True, caso contrário False.
-}

main :: IO()
main = print(repetidos [1,2,3,6,4,5,6,7])

repetidos :: [Int] -> Bool 
repetidos [] = False  
repetidos (x:xs)
	| elem x xs = True 
	| otherwise = repetidos xs 

