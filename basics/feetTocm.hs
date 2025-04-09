main :: IO()

str2Float :: String -> Float
str2Float x  = read x :: Float

convert :: Float -> Float
convert(x) = (x*30.48)

main = do
    putStrLn "Enter distance in feet:"
    input <- getLine
    let num1 = str2Float input 
    print(convert(num1))