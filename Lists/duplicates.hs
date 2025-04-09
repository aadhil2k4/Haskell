getCount n xs = length [i | i<-xs, i==n]

findDup [] ans = ans
findDup xs ans = do
    let count = getCount (head xs) xs
    if count > 1 then
        findDup (tail xs) ((head xs) : ans)
    else findDup (tail xs) ans

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
    let ans = findDup l []
    print ans