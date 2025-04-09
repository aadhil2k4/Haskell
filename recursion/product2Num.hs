product2Num a b 
    | b == 1 = a
    | otherwise = a + product2Num a (b-1)

main :: IO()
main = do
    putStrLn "Enter 1st number"
    input1 <- getLine
    putStrLn "Enter 2nd number"
    input2 <- getLine
    let a = read input1 :: Int 
        b = read input2 :: Int 
    print (product2Num a b)