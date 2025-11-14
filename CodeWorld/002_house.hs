{-
  Desenhar uma casinha
-}

-- importando a biblioteca
import CodeWorld

-- função principal responsável por executar as demais funções
main :: IO()
main = drawingOf(-- coordinatePlane &
                 parede & telhado & 
                 translated (-1) (-0.5) porta & 
                 translated 1.5 0 janela &
                 chamine & 
                 translated (-0.3) (-0.5) trinco &
                 translated 1.5 0 janeladet1 &
                 translated 1.5 0 janeladet2 &
                 translated 1.5 (-1.05) janeladet3 &
                 translated 1.5 0.025 janeladet4 &
                 translated 1.5 5.1 chaminedet &
                 translated 0 (-2.05) piso &
                 translated (-1) (-0.475) portadet1 &
                 translated (-0.3) (-0.62) portadet2 &
                 translated (-0.3) (-0.83) abertura)

--  funções responsáveis por desenhar cada parte da casa
parede :: Picture 
parede = rectangle 6 4 

telhado :: Picture 
telhado = polygon [(-3, 2), (3, 2), (0, 4.5)]

porta :: Picture 
porta = rectangle 2 3

janela :: Picture 
janela = rectangle 2 2 

chamine :: Picture 
chamine = polygon [(1, 3.67), (2, 2.83), (2, 5), (1, 5)]

trinco :: Picture
trinco = circle 0.15 

janeladet1 :: Picture 
janeladet1 = rectangle 0 2

janeladet2 :: Picture 
janeladet2 = rectangle 2 0

janeladet3 :: Picture
janeladet3 = rectangle 2.3 0.1

janeladet4 :: Picture
janeladet4 = rectangle 2.1 2.05

chaminedet :: Picture 
chaminedet = rectangle 1.3 0.2

portadet1 :: Picture 
portadet1 = rectangle 2.1 3.05

portadet2 :: Picture
portadet2 = rectangle 0.45 0.7

abertura :: Picture 
abertura = rectangle 0.07 0.14

piso :: Picture 
piso = rectangle 6 0.1


    



