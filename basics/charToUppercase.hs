import Data.Char

main :: IO()
main = do
    putStrLn "Enter a character:"
    input <- getChar
    print(toUpper input)
