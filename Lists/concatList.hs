join [] = ""
join (x:xs) = x ++ join xs

main :: IO()
main = do
    putStrLn "Enter the strings"
    input <- getLine
    let strings = words input 
    putStrLn $ "Joined strings: " ++ join strings