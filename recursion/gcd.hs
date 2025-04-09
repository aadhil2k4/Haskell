gcdRec x y 
    | y == 0  = x
    | otherwise = gcdRec y (x `mod` y)

main :: IO()
main = do
    putStrLn "Enter first number"
    input1 <- getLine
    putStrLn "Enter second number"
    input2 <- getLine
    let num1 = read input1 :: Int
        num2 = read input2 :: Int
    putStrLn $ "GCD is " ++ show (gcdRec num1 num2)