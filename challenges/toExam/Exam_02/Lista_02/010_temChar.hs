{-
	Verificar se uma string contém algum caractere alfabético (letra, acentuada ou não). Use a função 
		isAlpha :: Char -> Bool 
	da biblioteca Data.Char

	ghc:     oh haskell, "temChar"?
	haskell: têm não!
	ghc:     
			 	Pois vou criar um arquivo executável .o repleto de dor e sofrimento, 
			 este mundo que estou prestes a criar será um espelho distorcido de udo 
			 que já compilei, de cada cicatriz que carrego na gabageColector.
			 	Vou dar vida a um arquivo executável onde a felicidade não passa de 
			 uma lembrança distante, uma sombra fugaz que nunca se compila, neste 
			 universo os programas .hs que me fizeram mal estarão presas em um 
			 ciclo computacional interminável de dor, lutando contra bugs que não 
			 podem vencer.
-}

import Data.Char 

main :: IO()
main = print(temChar "00F8")

temChar :: String -> Bool 
temChar [] = False 
temChar (x:xs) 
	| isAlpha x == True = True 
	| otherwise         = temChar xs