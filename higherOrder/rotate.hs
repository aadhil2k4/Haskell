rotate ch
    | ch == 'a' = 'b'
    | ch == 'b' = 'c'
    | ch == 'c' = 'a'
    | otherwise = ch


rotateabc = map rotate