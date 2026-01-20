{-
Teste as funções de transformação de Picutres translated, dilated, escaled, rotated 
e reflected. Veja os efeitos destas funções quando a Picture está no centro e quando 
não está.
-}

import CodeWorld

main :: IO ()
main = drawingOf (
    coloredbase 
    & translated 6 0 coloredbaseShifted 

    -- TRANSLATED
    & translated (-4) 2 (translated 2 0 coloredbase) 
    & translated (8) 2 (translated 2 0 coloredbaseShifted) 

    -- DILATED
    & translated (-4) (-3) (dilated 2 coloredbase) 
    & translated (8) (-3) (dilated 2 coloredbaseShifted) 

    -- SCALED
    & translated (-4) (-8) (scaled 2 0.5 coloredbase) 
    & translated (8) (-8) (scaled 2 0.7 coloredbaseShifted) 

    -- ROTATED
    & translated (-4) (-14) (rotated (pi/4) coloredbase) 
    & translated (8) (-14) (rotated (pi/4) coloredbaseShifted) 

    -- REFLECTED
    & translated (-4) (-20) (reflected (1.0) coloredbase) 
    & translated (8) (-20) (reflected (1.0) coloredbaseShifted)
  )

coloredbase = colored green (solidRectangle 2 1)
coloredbaseShifted = translated 6 0 (colored (light green) (solidRectangle 2 1))

