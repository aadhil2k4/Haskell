findLength [] = 0
findLength xs = 1 + findLength(tail xs)

getList 0 result = return result
getList n result = do
    putStr "enter value "
    i <- getLine
    let nresult = i : result
    getList (n-1) nresult

main :: IO()
main = do
    putStrLn "Enter n"
    ip <- getLine
    let n = read ip :: Int
    l <- getList n []
    print(findLength l)