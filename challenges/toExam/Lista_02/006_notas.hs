{-
    Defina uma função que receba como entradas três números Float correspondentes a três notas e que retorne "Aprovado", "Reprovado" ou "Vai para a Final". Considera-se aprovado quando a média das três notas for maior ou igual a 7 e reprovado quando a nota for menor que 5. Se a nota estiver entre 5 e 7, considera-se que vai para a final.
-}

main :: IO()
main = do
    let nA = 0.0
        nB = 0.0
        nC = 0.0

    putStrLn("situação aluno: " ++ notas nA nB nC)

notas :: Float -> Float -> Float -> String
notas nA nB nC
    | (nA + nB + nC)/3 >= 7 = "APROVADO"
    | (nA + nB + nC)/3 < 5  = "REPROVADO"
    | otherwise             = "VAI PARA A FINAL"
