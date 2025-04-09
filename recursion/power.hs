powerCalc b e 
    | e==0 = 1
    | otherwise = b * powerCalc b (e-1)

main :: IO()
main = do
    putStrLn "Enter base"
    input1 <- getLine
    putStrLn "Enter exponent"
    input2 <- getLine
    let b = read input1 :: Int 
        e = read input2 :: Int 
    print (powerCalc b e)