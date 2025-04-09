middle3 xs = do
    let mid = (length xs) `div` 2
    [xs !! (mid+1), xs !! (mid), xs !! (mid-1)]

getList 0 result = return result
getList n result = do
    putStr "Enter number "
    i <- getLine
    let nresult = i : result
    getList (n-1) nresult

main :: IO()
main = do
    putStrLn "Enter n"
    ip <- getLine
    let n = read ip :: Int
    l <- getList n []
    print (middle3 l)