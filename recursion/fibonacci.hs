fib 0 = 0
fib 1 = 1
fib x = fib(x-1)+fib(x-2)

main :: IO()
main = do
    putStrLn "Enter number"
    input <- getLine
    let n = read input :: Int 
    print(map fib [0..n-1])
