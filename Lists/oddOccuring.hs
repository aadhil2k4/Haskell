getCount x xs = length [n | n<-xs, n==x]

oddOccuring xs = do
    let count = getCount (head xs) xs
    if (count `mod` 2) == 1 then
        head xs
    else 
        oddOccuring (tail xs)

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
    print (oddOccuring l)