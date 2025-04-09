countZero n = countZeroHelper n 0
    where 
        countZeroHelper 0 ans = ans
        countZeroHelper x ans 
            | x`mod`10 == 0 = countZeroHelper (x`div`10) (ans+1)
            | otherwise = countZeroHelper (x`div`10) ans

main :: IO()
main = do
    putStrLn "Enter a number"
    input <- getLine
    let n = read input :: Int 
    print (countZero n)