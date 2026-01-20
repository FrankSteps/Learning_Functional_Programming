{-
	Sem usar div nem mod, defina uma função chamada divMod que calcula ao mesmo tempo a divisão e o
	resto da divisão inteira (retorna uma tupla)


	myDiv 7 3

	7 - 3 = 4 (+1)
	4 - 3 = 1 (+1+1)

    myDiv(7 3) 
    myDiv(4 3)
    myDiv(1 3)
-}

main :: IO()
main = print(myDivMod 7 3)


myDivMod :: Int -> Int -> (Int,Int) 
myDivMod m n 
	| m < n     = (0, m)
	| otherwise = (1 + q, r)
	where 
		(q, r) = myDivMod (m-n) n

