{-
sei lá o que esrcever aqui vsfd!!!!

ah, lembrei. Compile essa bagaça no code world :)
-}
import CodeWorld

main :: IO()
main = drawingOf (
       coordinatePlane &
       picture           
                 )

picture :: Picture
picture = translated 0 2.8 (pictures [
          colored red (solidCircle 1) &
          colored yellow (solidCircle 2) &
          rotated (pi/4) (colored blue (solidRectangle 4 4))
                   ])