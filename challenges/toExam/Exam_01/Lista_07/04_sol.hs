{-
  Defina uma função que permita criar Pictures como a 
  mostrada a seguir

  [imagem.jpeg]

  A função deverá receber como entrada o número de pontas, 
  o raio interno e o raio externo. No exemplo, o número de 
  pontas é 10 enquanto que os raios interno e externo estão
  ilustrados na figura embaixo em cores preta e vermelha, 
  respectivamente.

  [imagem.jpeg]
-}

import CodeWorld 

main :: IO()
main = drawingOf(sun 3 7 10)

sun :: Double -> Double -> Double -> Picture
sun rMenor rMaior nPontas = pictures [
    colored yellow (solidCircle rMenor) &
    colored orange ((rotated (x * (2 * pi / nPontas)) 
      (solidPolygon [(-1.5,1.5), (0, rMaior), (1.5,1.5)])))
    | x <- [0 .. nPontas]
    ]