main :: IO()

str2Int :: String -> Int
str2Int x = read x :: Int

str2Float :: String -> Float
str2Float x = read x :: Float

square :: Int -> Int
square(x) = (x*x)

cube :: Int -> Int
cube(x) = (x*x*x)

sqrRoot :: Int -> Float
sqrRoot(x) = (str2Float(x)**0.5)

main = do
    putStrLn "Ener a number: "
    input1 <- getLine
    let num1 = str2Int input1
    print(square(num1))
    print(cube(num1))
    print(sqrRoot(input1))