main :: IO()

str2Float :: String -> Float
str2Float x = read x :: Float

convert :: Float -> Float
convert(x) = (x*1000)

main = do
    putStrLn "Enter the distance in km: "
    input1 <- getLine
    let num1 = str2Float input1
    print(convert(num1)) 