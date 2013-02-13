myReverse :: [s] -> [s]
myReverse [] = []
myReverse (a:xs) = myReverse xs ++ [a]
