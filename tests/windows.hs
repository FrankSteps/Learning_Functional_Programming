{-
    Pequeno teste com o gloss para criar ilustrações visuais com Haskell
-}

import Graphics.Gloss

main :: IO()
main = display
    (InWindow "Hello, Haskell" (720, 480) (10, 10))
    black
    (Circle 0)
