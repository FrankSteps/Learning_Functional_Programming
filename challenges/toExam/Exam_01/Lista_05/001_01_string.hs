{-
O string formado pelas letras maiúsculas e minúsculas do alfabeto inglês. 
Neste string, devem vir primeiro as maiúsculas, na ordem alfabética, 
e depois as minúsculas em ordem alfabética invertida.
-}

main :: IO()
main = putStrLn(reverList)
		
reverList :: String
reverList = ['A'..'Z'] ++ reverse['a'..'z']