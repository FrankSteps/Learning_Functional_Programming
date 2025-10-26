{-
    Este arquivo é compilável. Todas as funções estão sendo chamadas e tendo seus valores mostrados pela função main. O código inteiro está comentado para facilitar a leitura e correção do mesmo.

    Como dito em sala de aula, a primeira questão da lista fora anulada.
    Permaneço à disposição para eventuais esclarecimentos.

    ~ Francisco Passos (Frank Steps)
-}


-- Função Principal :: Chama as demais funções e mostra seus respectivos resultados
main :: IO()
main = do
    let w = 2 -- valor para a função sinal da segunda questão

        -- valores para a função sinal da quarta questão
        a = 4 - (2*3)
        b = (3^2) - (2*4)
        c = (4*4) - (2^4)

        -- valor para a função da quinta questão
        num = 5

        -- valor para a função da sexta questão
        nA = 0
        nB = 0
        nC = 0

        -- valores para as funções da sétima questão - valores booleanos
        x = True
        y = True

    -- Para responder a segunda questão
    putStrLn("sinal: " ++ show(sinal w))

    -- Para responder a quarta questão
    putStrLn("Sinal recebendo o valor a: " ++ show(sinal a))
    putStrLn("Sinal recebendo o valor b: " ++ show(sinal b))
    putStrLn("Sinal recebendo o valor c: " ++ show(sinal c))

    -- Para responder a quinta questão
    putStrLn(magnit num)

    -- Para responder a sexta questão
    putStrLn("situação aluno: " ++ notas nA nB nC)

    -- Para responder a sétima questão
    putStrLn("Saída XOR: " ++ show(xorECond x y))
    putStrLn("Saída XOR: " ++ show(xorCases x y))
    putStrLn("Saída XOR: " ++ show(xorOperL x y))
    putStrLn("Saída XOR: " ++ show(xorCompI x y))


-- Função para a Segunda, Terceira e Quarta questão
sinal :: Int -> Int
sinal w
    | w > 0     =  1
    | w < 0     = -1
    | otherwise =  0


-- Função para a quinta questão
magnit :: Int -> String
magnit num
    | num > 0    = "Positivo " ++ show num
    | num < 0    = "Negativo " ++ show (abs num)
    | otherwise  = "Nulo"


-- Função para a sexta questão
notas :: Float -> Float -> Float -> String
notas nA nB nC
    | (nA + nB + nC)/3 >= 7 = "APROVADO"
    | (nA + nB + nC)/3 < 5  = "REPROVADO"
    | otherwise             = "VAI PARA A FINAL"


-- Funções para a sétima questão

-- usando a expressão condicional if _ then _ else _.
xorECond :: Bool -> Bool -> Bool
xorECond x y =
    if x && not y then True
    else if not x && y then True
    else False

-- usando casamento de padrões.
xorCases :: Bool -> Bool -> Bool
xorCases x y
    | x && not y = True
    | not x && y = True
    | otherwise  = False

-- usando operadores lógicos
xorOperL :: Bool -> Bool -> Bool
xorOperL x y = not x && y || not y && x

-- usando comparação de igualdade
xorCompI :: Bool -> Bool -> Bool
xorCompI x y = x /= y
