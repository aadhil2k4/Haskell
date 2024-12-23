main :: IO()
main = do   
    putStrLn("Enter a Number:")
    x <- getLine
    let num = read x :: Int
    print(num)