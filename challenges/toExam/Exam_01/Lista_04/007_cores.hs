{-
Teste as funções que transformam cores: mixed, lighter, light,
darker, dark, brighter e bright.
-}

import CodeWorld

main :: IO ()
main = drawingOf (
          translated (-9) 0 (colored (mixed [red, blue]) (solidCircle 1.5))
        & translated (-6) 0 (colored (lighter 0.3 red)   (solidCircle 1.5))
        & translated (-3) 0 (colored (light red)         (solidCircle 1.5))
        & translated ( 0) 0 (colored (darker 0.3 red)    (solidCircle 1.5))
        & translated ( 3) 0 (colored (dark red)          (solidCircle 1.5))
        & translated ( 6) 0 (colored (brighter 0.5 red)  (solidCircle 1.5))
        & translated ( 9) 0 (colored (bright red)        (solidCircle 1.5))
                 )
