main :: IO ()
main = do
    putStrLn "Enter the roll number of the student:"
    rollno <- getLine
    putStrLn "Enter the first mark (out of 100):"
    input1 <- getLine
    putStrLn "Enter the second mark (out of 100):"
    input2 <- getLine
    putStrLn "Enter the third mark (out of 100):"
    input3 <- getLine
    let mark1 = read input1 :: Float
        mark2 = read input2 :: Float
        mark3 = read input3 :: Float
        average = (mark1 + mark2 + mark3) / 3
        grade
            | average >= 80 = "A"
            | average >= 70 = "B"
            | average >= 60 = "C"
            | average >= 50 = "D"
            | average <  40 = "F"
            | otherwise     = "Invalid marks"
    putStrLn ("Roll Number: " ++ rollno)
    putStrLn ("Average Marks: " ++ show average)
    putStrLn ("Grade: " ++ grade)
