compress :: Eq a => [a] -> [a]
compress [] = []
compress [a] = [a]
compress (x:xs@(y:_))
	| x == y = compress xs
	| otherwise = (x : compress xs)