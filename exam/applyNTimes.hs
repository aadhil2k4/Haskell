applyNTimes :: Int -> (a->a) -> a -> a
applyNTimes 0 f x = x
applyNTimes n f x = applyNTimes (n-1) f (f x)