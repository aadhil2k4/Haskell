main :: IO()
main = do
    putStrLn "Enter a number: "
    input <- getLine
    let x = read input :: Int
    if x `mod` 2 == 0 then 
        putStrLn "Even"
    else
        putStrLn "Odd"

