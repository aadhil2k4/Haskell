factorial n = product [1..n]

sumFactorials a b fn next = sum [fn x | x <- [a, a + next .. b]]