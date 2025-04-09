oddIdx xs = [x | (i, x) <- zip [0..] xs, odd i ]

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
    let ans = oddIdx l 
    print(sum ans)