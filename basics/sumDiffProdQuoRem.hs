main :: IO()

str2Int x = read x :: Int
str2Float x = read x :: Float

add(x,y) = (x+y)

sub(x,y) = (x-y)

mul(x,y) = (x*y)

quo(x,y) = str2Float(x)/str2Float(y)

remainder(x,y) = mod x y

main = do
    putStrLn "Enter 1st Number: "
    input1 <- getLine
    let num1 = str2Int input1
    putStrLn "Enter 2nd Number: "
    input2 <- getLine
    let num2 = str2Int input2
    print(add(num1, num2))
    print(sub(num1,num2))
    print(mul(num1,num2))
    print(quo(input1,input2))
    print(remainder(num1,num2))