sumDigits n = sumDigitsHelper n 0
    where 
        sumDigitsHelper 0 ans = ans
        sumDigitsHelper x ans = sumDigitsHelper (x`div`10) (ans + x`mod`10) 

main :: IO()
main = do
    putStrLn "Enter a number"
    input <- getLine
    let n = read input :: Int 
    print (sumDigits n)