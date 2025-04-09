concatList [] ys = ys
concatList xs ys = concatList (tail xs) ((head xs):ys)

getList 0 result = return result
getList n result = do   
    putStr "Enter value "
    i <- getLine
    let nresult = i : result
    getList (n-1) nresult

main :: IO()
main = do
    putStrLn "Enter Length list1 "
    ip1 <- getLine
    let n1 = read ip1 :: Int
    putStrLn "Enter Length list2 "
    ip2 <- getLine
    let n2 = read ip2 :: Int
    l1 <- getList n1 []
    l2 <- getList n2 []
    print(concatList l1 l2)
