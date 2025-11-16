{-
2° Questão

Defina uma função que permita criar quadrados com cantos arredondados.
a) O quadrado é sem preenchimento. Neste caso, para a construção dos cantos arredondados utilize a função arc.
b) O quadrado é preenchido (solid). Neste caso, utilize a função sector.
-}

import CodeWorld

main :: IO()
main =  drawingOf (
        coordinatePlane &
        squareSolid 26)

-- 3°Questão - a)
square :: Double -> Picture
square side =
    let h = side / 2
        curva = h / 3
    in
        polyline [(-h + curva,  h), (h - curva,  h)]
            & polyline [(-h + curva, -h), (h - curva, -h)]
            & polyline [( h, -h + curva), ( h,  h - curva)]
            & polyline [(-h, -h + curva), (-h,  h - curva)]

   & translated (-h + curva)  (h - curva)   (arc (pi) (pi/2) (curva))
   & translated (-h + curva)  (-h + curva)  (arc (-pi) (-pi/2) (curva))
   & translated  (h - curva)  (h - curva)   (arc 0 (pi/2) (curva))
   & translated  (h - curva)  (-h + curva)  (arc 0 (-pi/2) (curva))


-- 3°Questão - b)
squareSolid :: Double -> Picture
squareSolid side =
    let h = side / 2
        curva = h / 3
    in
        (solidRectangle (h + curva) (3 * (h + curva) / 2))
        & (solidRectangle (3 * (h + curva) / 2) (h + curva))

   & translated (-h + curva)  (h - curva)   (sector (pi) (pi/2) (curva))
   & translated (-h + curva)  (-h + curva)  (sector (-pi) (-pi/2) (curva))
   & translated  (h - curva)  (h - curva)   (sector 0 (pi/2) (curva))
   & translated  (h - curva)  (-h + curva)  (sector 0 (-pi/2) (curva))

