evenElem [] ans = ans
evenElem xs ans = do
    if (head xs) `mod` 2 == 0 then
        evenElem (tail xs) (head xs : ans)
    else 
        evenElem (tail xs) ans

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
    let ans = evenElem l []
    print (sum ans)