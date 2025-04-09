avgMarks n xs = do
    let totalSum = sum xs
    totalSum / fromIntegral n

checkCondition n xs = 
    let temp = [x | x <- xs, x< n]
    in length temp > 2

getList 0 result = return result
getList n result = do
    putStr "Enter value "
    i <- getLine
    let nresult = (read i :: Double) : result
    getList (n-1) nresult

main :: IO()
main = do
    putStrLn "Enter n"
    i <- getLine
    let n = read i :: Int
    l <- getList n []
    let classAvg = avgMarks n l
    putStr "class average "
    print classAvg 
    putStr "Are there more than 2 students < avg "
    print (checkCondition classAvg l)