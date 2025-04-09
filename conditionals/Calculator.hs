main :: IO()

str2Int x = read x :: Int
str2Float x = read x :: Float

add(x,y) = (x+y)

sub(x,y) = (x-y)

mul(x,y) = (x*y)

divide(x,y) = str2Float(x)/str2Float(y)

remainder(x,y) = mod x y

main = do 
    putStrLn "Enter the first number:"
    input1 <- getLine
    let num1 = str2Int input1
    putStrLn "Enter the second number:"
    input2 <- getLine
    let num2 = str2Int input2
    putStrLn "Enter option: 1 for add, 2 for sub, 3 for mul, 4 for div, 5 for remainder"
    input3 <- getLine
    let num3 = str2Int input3
    putStrLn "Result is:"
    if num3 == 1
        then print(add(num1,num2))
    else if num3==2
        then print(sub(num1,num2)) 
    else if num3==3
        then print(mul(num1,num2))
    else if num3==4 
        then print(divide(input1,input2))
    else if num3==5
        then print(remainder(num1, num2))
    else putStrLn "Wrong Input"