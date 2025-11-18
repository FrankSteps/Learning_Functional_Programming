{-
  Questão 4: 
  
  Defina uma função que permita construir olhos. A função receberá como argumento um caractere 
  'a', 'f' ou 's' para indicar aberto, fechado ou semifechado, respectivamente.  Similarmente, 
  defina uma função que permita criar bocas sorrindo, normais ou tristes. Finalmente, defina 
  uma função que permita combinar bocas e olhos para construir emojis.
-}

import CodeWorld

main :: IO()
main = drawingOf(emoji 'a' 'u') 

-- função que combina os olhos e boca para formar o emoji
emoji :: Char -> Char -> Picture
emoji tipoOlho tipoBoca =
       olhos tipoOlho
    &  boca tipoBoca
    &  colored yellow (solidCircle 3)

-- funções responsável por chamar a função equivalente ao caractere
olhos :: Char -> Picture
olhos e
  | e == 'a'  = olhosAbertos
  | e == 'f'  = olhosFechados
  | e == 's'  = olhosSemi
  | otherwise = olhosAbertos
  
boca :: Char -> Picture
boca b
  | b == 'u'  = bocaSorrindo
  | b == '-'  = bocaNormal
  | b == 'n'  = bocaTriste
  | otherwise = bocaNormal
  
-- funções responsáveis pela geração dos olhos
olhosAbertos :: Picture
olhosAbertos =
     translated (-1) 1 (colored black (solidCircle 0.35))
  &  translated ( 1) 1 (colored black (solidCircle 0.35))

olhosFechados :: Picture
olhosFechados =
     translated (-0.3) (-0.5) (polyline [(-1.2, 1), (-0.2, 1)])
  &  translated ( 0.3) (-0.5) (polyline [( 0.2, 1), ( 1.2, 1)])

olhosSemi :: Picture
olhosSemi =
     translated (-1) 1 (colored black (solidCircle 0.15))
  &  translated ( 1) 1 (colored black (solidCircle 0.15))

-- funções responsáveis pela geração da boca
bocaSorrindo :: Picture
bocaSorrindo =
  translated 0 (-0.5) (colored black (polyline [ ( -1.5 * cos a, -1.3 * sin a) | a <- [0, 0.02 .. pi] ]))

bocaNormal :: Picture
bocaNormal =
  translated 0 (-0.5) (polyline [(-1, -0.5), (1, -0.5)])

bocaTriste :: Picture
bocaTriste =
  translated 0 (-1) (colored black (polyline [ ( 1.5 * cos a, 1.3 * sin a) | a <- [0, 0.02 .. pi] ]))
