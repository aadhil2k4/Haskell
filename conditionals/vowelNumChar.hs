main :: IO()
main = do
    putStrLn "Enter something"
    x <- getLine
    if x `elem` ["a", "e","i","o","u","A","E","I","O","U"] then 
        putStrLn "Vowel"
    else if x `elem` ["0", "1","2","3","4","5","6","7","8","9"] then 
        putStrLn "Number"
    else 
        putStrLn "Other character"