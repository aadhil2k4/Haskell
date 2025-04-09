main :: IO()
main = do
    putStrLn "Enter 1st number"
    input <- getLine
    putStrLn "Enter 2nd Line"
    input2 <- getLine
    let num1 = read input :: Int
    let num2 = read input2 :: Int
    if num1 > num2 then
        putStrLn $ "The smaller number is " ++ show num2
    else 
        putStrLn $ "The smaller number is " ++ show num1