main :: IO()

str2Float :: String -> Float
str2Float x = read x :: Float

compoundInterest :: (Float, Float, Float, Float) -> Float
compoundInterest(p,r,n,t) = p * ((1 + r * 0.01 / n) ** (n * t)) - p

main = do
    putStrLn "Enter principal amount: "
    input1 <- getLine
    putStrLn "Enter rate of interest: " 
    input2 <- getLine
    putStrLn "Enter n: "
    input3 <- getLine
    putStrLn "Enter t: "
    input4 <- getLine
    let num1 = str2Float input1
    let num2 = str2Float input2
    let num3 = str2Float input3
    let num4 = str2Float input4
    print(compoundInterest(num1,num2,num3,num4))