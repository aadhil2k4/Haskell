import Data.Char

separate s = (filter isDigit s, filter (not . isDigit) s)