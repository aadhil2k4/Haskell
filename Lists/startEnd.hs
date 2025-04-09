startEnd [x] = (x,x)
startEnd xs = (last xs, head xs)

getList 0 result = return result
getList n result = do
    putStr "Enter number "
    i <- getLine
    let nresult = i:result
    getList (n-1) nresult

main :: IO()
main = do
    putStrLn "Enter no. of elements"
    input <- getLine
    let n = read input :: Int 
    l <- getList n []
    print (startEnd l)

