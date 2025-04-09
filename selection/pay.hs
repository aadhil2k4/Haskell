main :: IO()
main = do
    putStrLn "Enter hourly pay rate"
    input <- getLine
    putStrLn "Enter number of hours per week"
    input2 <- getLine
    let r = read input :: Float
        h = read input :: Int
        totalPay = 
            if h <= 40 then
                fromIntegral h * r
            else
                40 * r + fromIntegral (h-40) * 1.5* r
    putStrLn $ "Total pay is " ++ show totalPay