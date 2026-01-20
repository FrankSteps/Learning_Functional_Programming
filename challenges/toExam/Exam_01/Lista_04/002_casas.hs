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
casa :: Color -> Color -> Picture
casa cor corPorta = janela & teto & porta & parede
  where
    parede  = colored cor (solidRectangle 3.8 4)
    teto    = colored orange (solidPolygon [(-2, 2), (0,3), (2,2)])
    porta   = translated 0 (-1.25) (colored corPorta (solidRectangle 1 1.5))
    janela  = translated 0 1 (colored (light (light blue)) (solidCircle 0.5))

-- chaminé da casa
chamine :: Picture
chamine = colored black (solidPolygon [(1, 2.5), (1, 3.5), (1.5, 3.5), (1.5, 2.25)])

-- carro que fica próximo a casa
carro :: Color -> Picture
carro corCarro = pneu & corpo
  where
    corpo =
         translated (0) (-1.2)  (colored corCarro (solidPolygon [(-2.9,0.5), (-1.5,0.5), (-1,1.5), (-2.5,1.5)]))
       & translated (-2.2) (-1) (colored corCarro (solidRectangle 2 1))
    pneu = translated (-2.5) (-1.5) (colored (light corCarro) (solidCircle 0.5))
 
-- árvore que está ao lado da casa
arvore :: Color -> Picture
arvore corCopa = copa & tronco
  where
    copa   = translated 2.5 2 (colored corCopa (scaled 1.2 2.5 (solidCircle 1)))
    tronco = translated (-2) 0 (colored brown (solidPolygon [(4, -2), (4.2, 0), (4.8, 0), (5, -2)]))
     
-- função responsável por montar toda a estrutura da casa e organizá-la em uma só instrução  
casaCompleta :: (Color, Color, Color, Color, Bool) -> Picture
casaCompleta (cor1, cor2, cor3, cor4, temChamine) =
    arvore cor4
  & casa cor1 cor2
  & (if temChamine then chamine else blank)
  & carro cor3
  
 
-- função responsável por receber e passar as cores para as casas que forem sendo geradas
rua :: (Color, Color, Color, Color, Bool) -> (Color, Color, Color, Color, Bool) ->
       (Color, Color, Color, Color, Bool) -> (Color, Color, Color, Color, Bool) -> Picture
rua casa1 casa2 casa3 casa4 =
    translated 0 0 (casaCompleta casa1)
  & translated 8 0 (casaCompleta casa2)
  & translated 0 (-8) (casaCompleta casa3)
  & translated 8 (-8) (casaCompleta casa4)
 

-- função responsável por passar os parâmetros para a geração das casas
bairro :: Picture
bairro = rua (blue, orange, blue, dark green, True)
             (pink, blue, purple, green, False)
             (yellow, brown, blue, green, False)
             (red, black, yellow, green, True)
