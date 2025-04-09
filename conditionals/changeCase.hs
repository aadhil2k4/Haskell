import Data.Char

main :: IO()
main = do
    putStrLn "Enter character"
    input <- getChar
    if isLower input then
        print(toUpper input)
    else 
        print(toLower input)