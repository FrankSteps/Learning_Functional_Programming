{-
    Dê definições diferentes para uma função lógica que implemente o "ou exclusivo". O ou exclusivo de dois valores é verdadeiro se e somente se um deles for verdadeiro e outro falso.
Uma versão usando a expressão condicional if _ then _ else _.
Uma versão usando casamento de padrões.
Uma versão somente usando operadores lógicos (sem condicional nem casamento de padrões)
Uma versão usando comparação de igualdade (ou comparação de diferente)
-}

-- usando a expressão condicional if _ then _ else _.
xorExCond Bool -> Bool -> Bool
xorExCond x y =
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
xorCompI x y = x == True && y /= True || x /= True && y == True


