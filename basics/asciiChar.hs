import Data.Char

main :: IO()
main = do
    putStrLn "Enter a character: "
    input <- getChar
    putStrLn "The ASCII value:"
    print(ord input)