main :: IO()

str2Float :: String -> Float
str2Float x = read x :: Float

convert :: Float -> Float
convert x = (x-32)*(5/9)

main = do
    putStrLn "Enter temperature in farenheit: "
    input1 <- getLine
    let num1 = str2Float input1
    print(convert(num1))