{-
    Código corrigido e comentado da 2° questão da lista 4.
Fiz algumas alterações para o código ficar mais padronizado

    Este programa desenha um bairro formado por três ruas.
Cada rua contém três casas coloridas.
As ruas são organizadas verticalmente com diferentes escalas
para criar um efeito de profundidade (perspectiva).
-}

-- importando as bibliotecas
import CodeWorld
import CodeWorld.Sketches

-- função principal :: desenha o que foi gerado na tela
main :: IO()
main = drawingOf (
    -- coordinatePlane &
       bairro
                 )

-- função responsável por construir uma única casa
casa :: Color -> Picture
casa cor = teto & porta & parede
    where
        parede = colored cor (solidRectangle 4 3)
        teto   = colored orange (solidPolygon [(0,3), (-3,1), (3,1)])
        porta  = blank

-- recebe as três cores e monta uma rua com três casas
rua :: Color -> Color -> Color -> Picture
rua c1 c2 c3 =
    translated (-5) 0 (casa c1)
    & casa c2
    & translated 5 0 (casa c3)

-- monta três ruas usando transformações dando efeito de profundidade
-- ela também passas as cores que vão ser usadas por rua
bairro :: Picture
bairro =
    dilated 1.2 (translated 0 (-3.5) (rua gray black pink))
    & rua yellow pink blue
    & dilated 0.7 (translated 0 4 (rua red blue green))





