palindrome :: (Eq s) =>  [s] -> Bool
palindrome [] = True
palindrome [_] = True
palindrome xs = head xs == last xs && palindrome (tail (init xs)) 
