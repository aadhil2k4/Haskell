main :: IO()

str2Int x = read x :: Int

factorial n = fact(n,1)

fact (x,y) = if x==0 then y else fact(x-1,x*y)

main = do
    putStrLn "Enter a number:"
    input1 <- getLine
    let num1 = str2Int input1 
    print(factorial(num1))