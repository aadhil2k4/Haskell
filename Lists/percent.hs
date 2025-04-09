percentWeight weights = [formatPercentage w | w <- weights]
    where 
        totalWeights = sum weights
        formatPercentage w = show (w / totalWeights * 100) ++ "%"

getList 0 result = return result
getList n result = do
    putStr "Enter value: "
    ip <- getLine
    let nresult = (read ip :: Double) : result
    getList (n-1) nresult

main :: IO()
main = do
    putStrLn "Enter n"
    ip <- getLine
    let n = read ip :: Int
    l <- getList n []
    print (percentWeight l)