{-
  A função deve receber como entrada o número total de linhas (raios) na Picture 
  e o tamanho da linha. As cores são pegas da lista predefinida assortedColors.
-}

import CodeWorld 

main :: IO()
main = drawingOf(
       --coordinatePlane &
       drawing 3 7
                )
                
drawing :: Double -> Int -> Picture
drawing raio qntL = pictures
    [ colored (assortedColors !! x) 
      (rotated (fromIntegral x * (2 * pi / fromIntegral qntL)) 
      (polyline [(0,0), (0,raio)]))
    | x <- [0 .. qntL-1]
    ]