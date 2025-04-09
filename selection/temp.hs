main :: IO()
main = do
    putStrLn "Enter temperature"
    input <- getLine
    let num = read input :: Int 
    if num > 80 then
        putStrLn "Go play golf"
    else if num >=70 && num<=79 then
        putStrLn "Put on a jacket"
    else 
        putStrLn "It is way too cold"
