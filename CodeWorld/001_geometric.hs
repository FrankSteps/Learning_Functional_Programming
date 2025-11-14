{-
  Pequeno código para ser executado no code world.
  Aqui as funções estão criando figuras geometricas.
-}

-- importando a biblioteca codeworld
import CodeWorld 

-- função principal que irá chamar as funções para desenhar na tela
main :: IO()
main = drawingOf (
       coordinatePlane & 
       squareShape &
       circleShape &
       solidTriangShape)

-- desenha um quadrado 
squareShape :: Picture 
squareShape = rectangle 4 4

-- desenha um círculo
circleShape :: Picture 
circleShape = circle 2

-- desenha um triangulo preenchido
solidTriangShape :: Picture 
solidTriangShape = solidPolygon [(2, -2), (-2, -2), (0, 2)]
