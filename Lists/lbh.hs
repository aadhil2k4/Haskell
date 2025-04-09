vol dimn = do
    let total = sum[l*b*h | [l,b,h] <- dimn]
    show(total) ++ "inA3"

getList 0 result = return result
getList n result = do
    putStr "Box no- "
    print n
    putStr "Enter l: "
    ip2 <- getLine
    let l = read ip2 :: Int
    putStr "Enter b: "
    ip3 <- getLine
    let b = read ip3 :: Int
    putStr "Enter h: "
    ip4 <- getLine
    let h = read ip4 :: Int
    getList (n-1) (result ++ [[l,b,h]])

main :: IO()
main = do
    putStrLn "Enter n"
    i <- getLine
    let n = read i :: Int 
    l <- getList n []
    print(vol l)