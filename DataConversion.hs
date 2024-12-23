import Data.Typeable(typeOf)
main :: IO()
main = do   
    x <- getLine
    print(typeOf(x))
    let num = read x::Int
    print(typeOf(num))