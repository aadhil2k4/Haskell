main :: IO()

str2Float :: String -> Float
str2Float x = read x :: Float

csa :: Float -> Float
csa x = (4*pi*x*x)

vol :: Float -> Float
vol x = ((4/3)*pi*x*x*x)

main = do
    putStrLn "Enter radius: "
    input1 <- getLine
    let num1 = str2Float input1
    print(csa(num1))
    print(vol(num1))