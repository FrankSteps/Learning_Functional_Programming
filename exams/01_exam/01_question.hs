{-
	Por conta do tempo, irei criar uma função que faz a soma de dois tempos
-}

import Text.Printf

type Tempo = (Int, Int, Int)

main :: IO()
main = do
    let tempo1 = (0, 20, 50)
        tempo2 = (13, 45, 12)
        showTp = somaTempo tempo1 tempo2

    print showTp
    putStrLn (formaTempo showTp)

somaTempo :: Tempo -> Tempo -> Tempo
somaTempo (h1, m1, s1) (h2, m2, s2) = 
	(hFinal, mFinal, sFinal)
	where 
		sTotal = s1 + s2
		mTotal = m1 + m2 + sTotal `div` 60
		hTotal = h1 + h2 + mTotal `div` 60

		sFinal = sTotal `mod` 60
		mFinal = mTotal `mod` 60
		hFinal = hTotal

formaTempo :: Tempo -> String
formaTempo (h, m, s) = 
	printf "%02d:%02d:%02d" h m s 