-- Parte 1: List comprehension
-- Exercicio 1
geraPotencias :: Int -> [Int]
geraPotencias x = [2 ^ x | x <- [x, x-1..0]]

-- Exercicio 2
addSuffix :: String -> [String] -> [String]
addSuffix str lista = [(nome ++ str) | nome <- lista]

-- Exercicio 3
anosDeNascimento :: [Int] -> [Int]
anosDeNascimento lista = [(2015 - nome) | nome <- lista, nome > 20]
