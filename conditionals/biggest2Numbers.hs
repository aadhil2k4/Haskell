main :: IO ()
main = do
    putStrLn "Enter 1st number"
    x <- getLine
    putStrLn "Enter 2nd number"
    y <- getLine
    let num1 = read x :: Int
    let num2 = read y :: Int
    if num1 > num2 then
        putStrLn $ "The bigger number is: " ++ show num1
    else if num1 < num2 then
        putStrLn $ "The bigger number is: " ++ show num2
    else
        putStrLn "Both numbers are equal"