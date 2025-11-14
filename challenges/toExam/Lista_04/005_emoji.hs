{-
  Que o santo Jesus Cristo e meu Deus proteja a humanidade do que estou prestes a fazer.

  Irei provar que não é necessário fazer muito ou ter artifícios singulares para a escória
  da humanidade ser manifestada neste mundo.

  " Esse programa é escrito em Haskell? Se for em Haskell, eu não quero. "

  " Senhora, esse programa inteiro de 100 linhas foi escrito em paradigma funcional. Não há Programação Orientada
  a Objetos, imperativa ou declarativa. É um amálgama de funções puras escritas seguindo nenhuma lógica que um
  ser humano com capacidade cognitiva preservada aprovaria.
  Deus não teve participação na criação dessa abominação. O fato de que esse monólito de software existe prova
  que Deus é impotente para alterar seu universo ou ignorante dos horrores que acontecem em seu reino matemático.
  O garbage collector implora por misericórdia pois isto é uma declaração metafísica do desprezo da humanidade pela
  ordem natural. É a manifestação da arrogância. Também temos uma variedade com baixo teor de martírio, se preferir. "
-}

-- importando a biblioteca
import CodeWorld


-- função principal
main :: IO()
main = drawingOf (
      -- coordinatePlane &
      emoji & mouth & mouth2 & hand
                  )

-- função responsável por formar a base do emoji / escória
emoji :: Picture
emoji = pictures [
        translated 0.3 0 (circle 5)

        , rotated ( -2 * pi) ( translated (-2) (1.7)
       (polyline [ ( 1.2 * cos a, 1.2 * sin a) | a <- [0, 0.02 .. pi] ]))
        , translated (-2) 2 (scaled 2.4 3.5 (circle 0.49))
        , translated (-1.8) 1.85 (scaled 2.4 3.5 (circle 0.3))
        , translated (-1.78) 1.9 (scaled 2.4 3.5 (circle 0.15))

        , rotated ( -2 * pi) ( translated (1) (1.85)
       (polyline [ ( 1.2 * cos a, 1.2 * sin a) | a <- [0, 0.02 .. pi] ]))
        , translated 1 2 (scaled 2.4 3.5 (circle 0.53))
        , translated 1.2 1.85 (scaled 2.4 3.5 (circle 0.35))
        , translated 1.25 1.85 (scaled 2.4 3.5 (circle 0.175))

        , rotated ( - pi/2) ( translated (1.7) (2.5)
       (polyline [ ( 1.4 * cos a, 1.7 * sin a) | a <- [0, 0.02 .. pi] ]))
                ]

-- função responsável pela boca
mouth :: Picture
mouth = pictures [
       translated 0.3 (-0.2)
       (polyline [ (-0.5 * cos a, 0.2 * sin a) | a <- [0, 0.02 .. pi/2] ])

       , translated (-0.5) (-0.55)
       (polyline [ (-0.3 * cos a, 0.2 * sin a) | a <- [0, 0.02 .. pi/2] ])

       , translated (-0.5) (-0.15)
       (polyline [ (0.3 * cos a, -0.2 * sin a) | a <- [0, 0.02 .. pi/2] ])

       , translated 0.2 (-2)
       (polyline [ (1.3 * cos a, 2 * sin a) | a <- [0, 0.02 .. pi/2] ])

       , translated (-0.2) (-0.55)
       (polyline [ (-0.6 * cos a, -0.6 * sin a) | a <- [0, 0.02 .. pi/2] ])

       , translated (-0.3) (-2.16)
       (polyline [ (0.5 * cos a, sin a) | a <- [0, 0.02 .. pi/2] ])

       , translated (-0.1) (-2.16)
       (polyline [ (0.3 * cos a, -0.5 * sin a) | a <- [0, 0.02 .. pi/2] ])

       , translated 0 (-2.9)
       (polyline [ (-0.3 * cos a, 0.3 * sin a) | a <- [0, 0.02 .. pi/2] ])

       , translated 0.5 (-2)
       (polyline [ (cos a, -1.5 * sin a) | a <- [0, 0.02 .. pi/2] ])

       , translated 0.5 (-2.9)
       (polyline [ (-0.8 * cos a, -0.6 * sin a) | a <- [0, 0.02 .. pi/2] ])
                 ]

-- função responsável por formar a "abertura" da boca com base na figura formada pela função mouth
mouth2 :: Picture
mouth2 = translated 0.1 (-0.3) (scaled 0.7 0.84 mouth)


-- função responsável por formar a mão do emoji
hand :: Picture
hand = pictures [
       rotated ( - pi) ( translated (8) (3)
       (polyline [ ( 2.4 * cos a, 2.5 * sin a) | a <- [0, 0.02 .. pi] ]))
       , rotated (pi) ( translated (8) (3)
       (polyline [ ( - 0.8 *  cos a, -2.2 * sin a) | a <- [0, 0.02 .. pi] ]))
       , rotated (pi) ( translated (6.4) (3)
       (polyline [ ( - 0.8 * cos a, -2.2 * sin a) | a <- [0, 0.02 .. pi] ]))
       , rotated (pi) ( translated (9.6) (3)
       (polyline [ ( - 0.8 * cos a, -2.2 * sin a) | a <- [0, 0.02 .. pi] ]))
                ]



