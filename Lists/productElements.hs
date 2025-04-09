prodElem [] n = n
prodElem xs n = prodElem (tail xs) (n*head xs)


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
    let ans = prodElem l 1
    print ans