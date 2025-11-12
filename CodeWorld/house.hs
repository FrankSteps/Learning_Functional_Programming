{-
  Desenhar uma casinha
-}

-- importando a biblioteca
import CodeWorld

-- função principal responsável por executar as demais funções
main :: IO()
main = drawingOf(
                 parede & telhado & 
                 translated (-1) (-0.5) porta & 
                 translated 1.5 0 janela &
                 chamine & 
                 translated (-0.3) (-0.5) trinco &
                 translated 1.5 0 detalhe1 &
                 translated 1.5 0 detalhe2)

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
chamine = polygon [(1, 3.65), (2, 2.8), (2, 5), (1, 5)]

trinco :: Picture
trinco = solidCircle 0.2 

detalhe1 :: Picture 
detalhe1 = rectangle 0 2

detalhe2 :: Picture 
detalhe2 = rectangle 2 0
    




