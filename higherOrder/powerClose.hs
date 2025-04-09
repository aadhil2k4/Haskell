{-
The procedure power-close-to which takes three non-zero positive integer b  n and i as arguments and returns 
the smallest power of b, that is greater than n by defining the procedures (expt b i) which raises b to the power i 
and (inc i) which increments i by 1.                                                                                                                                        
Example
Power-close-to 2 3 1
2
-}

powerCloseTo b n i 
    | b^i > n = b^i
    | otherwise = powerCloseTo b n (i+1)