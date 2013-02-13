elementAt :: [a] -> Int -> a
elementAt (a:_) 1 = a
elementAt (_:xs) n
    | n < 1     = error "bad"
    | otherwise = elementAt xs (n-1)
