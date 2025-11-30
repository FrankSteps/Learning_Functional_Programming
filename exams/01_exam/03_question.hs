{-
  amo minha vida
  espero que haskell me ame tmb...
-}
import CodeWorld

main :: IO()
main = drawingOf(
      coordinatePlane &
      picture &
      translated 0 5 (picture) &
      translated 0 (-5) (picture) 
                )

picture :: Picture 
picture = pictures[
        rotated (pi/4)(colored red(solidRectangle 2 2)) &
        translated 0 0.5 (colored yellow(solidRectangle 3 3)) &
        (colored blue(solidRectangle 4 4))
                  ]