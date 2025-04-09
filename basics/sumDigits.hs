sumDigits x = 
    let hundereds = x `div` 100
        tens = (x `div` 10) `mod` 10
        ones = x `mod` 10
    in hundereds+tens+ones

main :: IO()
main = do
    putStrLn "Enter a 3 digit number"
    input <- getLine
    let num = read input :: Int
    if num>=100 && num<=999 then
        print(sumDigits(num))
    else
        putStrLn "Not a 3 digit number"