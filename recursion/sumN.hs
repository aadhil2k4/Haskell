sumN n = sumHelper n 0
    where
        sumHelper 0 ans = ans
        sumHelper x ans = sumHelper (x-1) (ans+x)

main :: IO()
main = do
    putStrLn "Enter n"
    input <- getLine
    let n = read input :: Int 
    print (sumN n)