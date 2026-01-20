{-
Anualmente, o MEC avalia os cursos universitários de todo o país e atribui conceitos com base em diversos critérios, sendo um deles a quantidade de livros disponíveis. Considerando as regras definidas abaixo, escreva uma função que receba como entrada a quantidade de livros e a quantidade de alunos de um curso, ambos inteiros, e retorne a letra maiúscula correspondente ao conceito concedido pelo MEC.
1 livro para até 8 alunos --> Conceito A
1 livro para entre 9 e 12 alunos --> Conceito B
1 livro para entre 13 e 18 alunos --> Conceito C
1 livro para mais de 18 alunos --> Conceito D
-}

main :: IO()
main = do
    let livros = 0
        alunos = 0
    putStrLn("Conceito: " ++ mec livros alunos)

mec :: Int -> Int -> String
mec livros alunos
    | livros == 0 = "Inválido"
    | razao <= 8  = "A"
    | razao <= 12 = "B"
    | razao <= 18 = "C"
    | otherwise   = "D"
    where
        razao = alunos `div` livros
