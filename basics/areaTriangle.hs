main :: IO()

str2Float :: String -> Float
str2Float x = read x :: Float

area :: (Float, Float, Float) -> Float
area(s1,s2,s3) = 
    let s = (s1+s2+s3)/3
    in sqrt(s*(s-s1)*(s-s2)*(s-s3))

main = do
    putStrLn "Enter side1: "
    input1 <- getLine
    putStrLn "Ënter side2: "
    input2 <- getLine
    putStrLn "Enter side3: "
    input3 <- getLine
    let num1 = str2Float input1
    let num2 = str2Float input2
    let num3 = str2Float input3
    print(area(num1,num2,num3))