import Data.Char

pangram s = all (`elem` map toLower s) ['a' .. 'z']