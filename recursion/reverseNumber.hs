revNum n = reverseHelper (abs n) 0 * signum n
    where 
        reverseHelper 0 rev = rev
        reverseHelper num rev = reverseHelper (num `div` 10) (rev*10 + num `mod` 10)

main :: IO()
main = do
    putStrLn "Enter number"
    input <- getLine
    let n = read input :: Int 
    print(revNum n)