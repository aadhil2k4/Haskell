main :: IO()
main = do
    putStrLn "Enter a number"
    input <- getLine
    let num = read input :: Int 
    if num `mod` 7 == 0 then
        putStrLn "Divisible"
    else
        putStrLn "Not Divisible"