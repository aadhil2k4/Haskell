main :: IO()
main = do
    putStrLn "Enter first number"
    input1 <- getLine
    putStrLn "Enter second number"
    input2 <- getLine
    putStrLn "Enter third number"
    input3 <- getLine
    let num1 = read input1 :: Int
    let num2 = read input2 :: Int
    let num3 = read input3 :: Int
    if num1 > num2 && num1 >num3 then 
        putStrLn $ "Greatest is " ++ show num1
    else if num2 > num1 && num2 > num3 then
        putStrLn $ "Greatest is " ++ show num2
    else 
        putStrLn $ "Greatest is " ++ show num3