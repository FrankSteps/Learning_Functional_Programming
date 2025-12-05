{-
  A função recebe como parâmetro o número de linhas verticais, o tamanho da linha menor, 
  o incremento de tamanho a cada linha e o espaçamento entre linhas.

  análise: 
  0 + 1 + (1/2) * 1
  1 + 1 + (1/2) * 2
  2 + 1 + (1/2) * 3
-}

import CodeWorld

main :: IO()
main = drawingOf(
       coordinatePlane &
       linhas 7 1 1 1
                )
                

linhas :: Double -> Double -> Double -> Double -> Picture
linhas n tam inc esp = pictures
    [ translated (x * esp)
                 ((tam + inc * x) / 2)
                 (solidRectangle 0.1 (tam + inc * x))
    | x <- [0..n-1]
    ]

