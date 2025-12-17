{-
Escreva uma função calcule:
	1/0!+1/1!+1/2!+...+1/n!


	(1/n!) + ... + [1 / (3 * 2 * 1)] + [1/(2 * 1)] + [1/(1)] + [1/(1)]
	

Só como informação, esta série permite calcular aproximações 
para a constante de euler e. Em particular, o limite desta 
série é e.
-}

-- função principal
main :: IO()
main = do
    let n = 7
    print(serieEuler n)

-- Deixei a função que calcula o fatorial como local apenas
serieEuler :: Int -> Double 
serieEuler 0 = 1
serieEuler n = 1 / fat n + serieEuler(n-1)
    where 
       fat 0 = 1
       fat k = fromIntegral k * fat(k-1)