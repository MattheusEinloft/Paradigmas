import Data.Char

userName :: String -> String
userName [] = []
userName str = toLower (head str) : map toLower (lastName str)

lastName :: String -> String
lastName [] = []
lastName str = if filter(== ' ') str == [] then str
	       else lastName (tail str)

main :: IO ()
main = do
    strcontent <- readFile "nomes.csv"
    let strlist = lines strcontent
        strnew = [str ++ "," ++ userName str | str <- strlist]
    writeFile "logins.csv" (unlines strnew)