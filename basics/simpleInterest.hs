main :: IO()

str2Float :: String -> Float
str2Float x = read x :: Float

simpleInterest :: Float -> Float
simpleInterest(p,r,t) = (p*r*t)/100

main = do   
    putStrLn "Enter principal amount: "
    input1 <- getLine
    putStrLn "Enter interest rate: "
    input2 <- getLine
    putStrLn "Enter time period: "
    input3 <- getLine
    let num1 = str2Float input1
    let num2 = str2Float input2
    let num3 = str2Float input3
    print(simpleInterest(num1, num2, num3))