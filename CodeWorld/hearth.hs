
{-
	Desenhando uma figura com uma única função responsável pelo desenvolvimento dela.
	O coração foi usado para este exemplo

	Este exemplo é para ser executado em: www.code.world/haskell
-}

-- importando a biblioteca codeworld
import CodeWorld 

-- função principal
main :: IO()
main = drawingOf (coracao)

-- função para desenhar o coração
coracao :: Picture
coracao = pictures[
  translated (-1.7) 2 (colored red (solidCircle 2)),
  translated 1.7 2 (colored red (solidCircle 2)),
  colored red (solidPolygon [(-3.39, 0.9), (0, -3), (3.39, 0.9)]),
  translated 0 1 (colored red (solidCircle 1) )
                  ]


