{-
Write a Haskell program only using recursion without higher-order function and list comprehension with 
the function largeTuples whose arguments are max and list of tuples which produces a list of the tuples 
whose sum is larger than max, i.e., for a tuple (a,b), a + b > max.
-}

largeTuples x [] = []
largeTuples max ((a,b):xs) 
    | a+b > max = (a,b) : largeTuples max xs
    | otherwise = largeTuples max xs