main :: IO()
main = do
    putStrLn "Enter a number"
    input <- getLine
    let num = read input :: Int 
    if num > 0 then
        putStrLn "Positive"
    else if num < 0 then 
        putStrLn "Negative"
    else 
        putStrLn "zero"