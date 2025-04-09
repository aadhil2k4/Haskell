productList [] = 1
productList (x:xs) = x * productList xs

main :: IO()
main = do
    putStrLn "Enter line separated strings"
    input <- getLine
    let numbers = map read (words input) :: [Int]
    putStrLn $ "Product of list is " ++ show (productList numbers)