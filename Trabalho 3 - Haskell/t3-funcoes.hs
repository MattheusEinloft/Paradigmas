import Data.Char

-- Exercicio 1
firstName :: String -> String
firstName [] = []
firstName str = if filter(== ' ') str == [] then str
		else firstName (init str)

-- Exercicio 2
firstName' :: String -> String
firstName' [] = []
firstName' str = takeWhile(/= ' ') str

-- Exercicio 3
lastName :: String -> String
lastName [] = []
lastName str = if filter(== ' ') str == [] then str
	       else lastName (tail str)

-- Exercicio 4
userName :: String -> String
userName [] = []
userName str = toLower (head str) : map toLower (lastName str)

-- Exercicio 5
encodeName :: String -> String
encodeName str = concat [trocaStr (x) | x <- aux(str)]

trocaStr :: String -> String
trocaStr str
	| str == "a" || str == "A" = "4"
	| str == "e" || str == "E" = "3"
	| str == "i" || str == "I" = "1"
	| str == "o" || str == "O" = "0"
	| str == "u" || str == "U" = "00"
	| otherwise = str

aux :: String -> [String]
aux str = [ [x] | x <- str]

-- Exercicio 6
isElem :: Int -> [Int] -> Bool
isElem _ [] = False
isElem num lis = if lis == [] then False
		 else if num == head(lis) then True
		 else isElem num (tail lis)

-- Exercicio 7
numVogais :: String -> Int
numVogais [] = 0
numVogais str = if (ehVogal (head str)) == True then 1 + numVogais(tail str)
		else numVogais(tail str)

ehVogal :: Char -> Bool
ehVogal char = if (char == 'a' || char == 'A' || char == 'e' || char == 'E' || char == 'i' || char == 'I' || char == 'o' || char == 'O' || char == 'u' || char == 'U') then True
	       else False

-- Exercicio 8
numConsoantes :: String -> Int
numConsoantes [] = 0
numConsoantes str = let a = length(filter(== 'a') str)
			a2 = length(filter(== 'A') str)
			e = length(filter(== 'e') str)
			e2 = length(filter(== 'E') str)
			i = length(filter(== 'i') str)
			i2 = length(filter(== 'I') str)
			o = length(filter(== 'o') str)
			o2 = length(filter(== 'O') str)
			u = length(filter(== 'u') str)
			u2 = length(filter(== 'U') str)
			space = length(filter(== ' ') str)
		    in length(str) - (a + a2 + e + e2 + i + i2 + o + o2 + u + u2 + space)

-- Exercicio 9
isInt :: String -> Bool
isInt [] = False
isInt str = let a = and(map(>= '0') str)
		b = and(map(<= '9') str)
	    in a && b

-- Exercicio 10
strToInt :: String -> Int
strToInt str = sum $ zipWith (*) (map(digitToInt) str) (map(10^) [length(str) - 1, length(str) - 2..])