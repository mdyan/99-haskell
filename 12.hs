data ListItem a = Single a | Multiple Int a
    deriving Show
decodeModified :: [ListItem a] -> [a]
decodeModified a = foldr (++) [] (map decompress a)
    where   decompress (Single a) = [a]
            decompress (Multiple i a) = replicate i a