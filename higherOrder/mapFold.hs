mapl f xs = foldl(\acc x -> acc ++ [f x]) [] xs

mapr f xs = foldr(\x acc -> f x : acc) [] xs