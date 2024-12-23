main :: IO()

mymap f xs = [f x | x <- xs]

main = do   
    print (mymap abs [1,-2,3,-4,5])
    print(mymap odd [1,2,3,4,5])