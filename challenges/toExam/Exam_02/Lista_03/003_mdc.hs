{-
	Outra propriedade do mdc (máximo divisor comum) é que se a > b, então mdc a b = mdc (a `mod` b) b
    Use esta propriedade para dar uma definição recursiva para a função mdc
-}

main :: IO()
main = print(mdc 12 4)

mdc :: Int -> Int -> Int 
mdc a b 
	| a 0       = 1
	| otherwise = mdc a (mod a b)