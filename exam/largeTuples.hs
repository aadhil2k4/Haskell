largeTuples max ((a,b):xs)
    | a+b > max = (a,b) : largeTuples max xs
    | otherwise largeTuples max xs