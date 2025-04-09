elemAtIdx :: [x] -> Int -> x
elemAtIdx (x:xs) 0 = x
elemAtIdx xs n = elemAtIdx (tail xs) (n-1)

fml :: [x] -> (x, x, x)
fml xs = (head xs, elemAtIdx xs ((length xs) `div` 2), last xs)