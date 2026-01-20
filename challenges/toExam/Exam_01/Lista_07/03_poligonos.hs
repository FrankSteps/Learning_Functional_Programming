{-
  Defina uma função que permita construir polígonos regulares. A função recebe 
  como parâmetros o raio e a quantidade de lados do polígono.
  
  Me inspirei na resolução da questão do emoji sus que eu havia feito quando 
  conheci o codeWorld. 
  
  Emoji:
  https://github.com/FrankSteps/Emoji_SUS
-}

import CodeWorld

main :: IO()
main = drawingOf(coordinatePlane & poligono 3 3)

poligono :: Double -> Double -> Picture 
poligono raio qntL = polyline pontos
         where -- usando where para deixar a função mais legível
           pontos = [ (raio * cos (ang t), raio * sin (ang t)) | t <- [0 .. qntL] ]
           ang t  = 2 * pi * t / qntL