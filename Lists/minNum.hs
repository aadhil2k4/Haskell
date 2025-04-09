minNum [] n = n
minNum xs n = do
    if head xs < n then
        minNum (tail xs) (head xs)
    else
        minNum (tail xs) n

getList 0 result = return result
getList n result = do
    putStr "Enter number "
    i <- getLine
    let nresult = (read i :: Int):result
    getList (n-1) nresult

main :: IO()
main = do
    putStrLn "Enter no. of elements"
    input <- getLine
    let n = read input :: Int 
    l <- getList n []
    let ans = minNum l (head l)
    print ans