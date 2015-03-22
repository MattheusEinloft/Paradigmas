-- Programacao

-- 1) Escreva uma funcao hasEqHeads :: [Int] -> [Int] -> Bool que verifica se as 2 listas possuem o mesmo primeiro elemento.
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = if (head x) == (head y) then True else False

-- 2) Observe a funcao abaixo, que eleva ao cubo cada elemento da lista, produzindo outra lista.
pot3 :: [Int] -> [Int]
pot3 [] = []
pot3 ns = (head ns)^3 : pot3 (tail ns)

-- 3) Escreva uma funcao recursiva add10, que adicione a constante 10 a cada elemento de uma lista, produzindo outra lista.
add10a :: [Int] -> [Int]
add10a [] = []
add10a lis = (head lis) + 10 : add10a (tail lis)

-- 4) Escreva uma funcao recursiva addComma, que adicione uma virgula no final de cada string contida numa lista.
addComma1 :: [String] -> [String]
addComma1 [] = []
addComma1 str = ((head str) ++ ",") : addComma1 (tail str)

-- 5) Refaca os 2 exercicios anteriores usando a funcao de alta ordem 'map'.
add10b :: [Int] -> [Int]
add10b [] = []
add10b lis = map(+10) lis

addComma2 :: [String] -> [String]
addComma2 [] = []
addComma2 str = map(++ ",") str

-- 6) Crie uma funcao htmlListItems :: [String] -> [String], que receba uma lista de strings e retorne outra lista contendo as strings formatadas como itens de lista em HTML.
aux1 :: String -> String
aux1 [] = []
aux1 str = "<LI>" ++ str ++ "</LI>"

htmlListItems :: [String] -> [String]
htmlListItems str = map(aux1) str

-- 7) Crie uma funcao recursiva charFound :: Char -> String -> Bool, que verifique se o caracter (primeiro argumento) esta contido na string (segundo argumento).
charFound1 :: Char -> String -> Bool
charFound1 char "" = False
charFound1 char str = if (char) == (head str) then True else charFound1 char (tail str)

-- 8) Reescreva a funcao anterior sem recursao, usando outras funcoes pre-definidas ja vistas em aula.
charFound2 :: Char -> String -> Bool
charFound2 char str = if (filter(== char) str == "") then False else True

-- 9) Use a funcao de alta ordem 'zipWith' para produzir uma funcao que obtenha as diferencas, par a par, dos elementos de duas listas.
diferenca :: [Int] -> [Int] -> [Int]
diferenca lis1 lis2 = zipWith (-) lis1 lis2

-- Funcoes de alta ordem

-- 1) Dada uma lista de numeros, calcular 2*n+1 para cada numero n contido na lista.
aux2 :: Int -> Int
aux2 num = 2 * num + 1

func1 :: [Int] -> [Int]
func1 lis = map(aux2) lis

-- 2) Dadas duas listas X e Y de numeros inteiros, calcular 4*x+2*y+1 para cada par de numeros x e y pertencentes as listas.
func2 :: [Int] -> [Int] -> [Int]
func2 lis1 lis2 = map(+1) (zipWith(+) (map(*4) (lis1)) (map(*2) (lis2)))

-- 3) Dada uma lista de strings, produzir outra lista com strings de 10 caracteres, usando o seguinte esquema: strings de entrada com mais de 10 caracteres sao truncadas, strings com ate 10 caracteres sao completadas com '.' ate ficarem com 10 caracteres.
teste :: String -> String
teste str = if length (str) == 10 then str else if length (str) > 10 then teste (init str) else teste (str ++ ".")

func3 :: [String] -> [String]
func3 str = map(teste) str

-- 4) Dada uma lista de idades, selecionar as que sao maiores que 20 e, para cada uma, calcular o ano de nascimento correspondente (aproximado, considerando o ano atual).
func4 :: [Int] -> [Int]
func4 str = map(2015-) (filter(>20) str)