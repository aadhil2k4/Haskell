main :: IO()
main = do
    putStrLn "Enter 1st number"
    x <- getLine
    putStrLn "Enter 2nd number"
    y <- getLine
    (x, y) <- return (y, x)
    putStrLn $ "1st number " ++ x ++ ", 2nd number " ++ y