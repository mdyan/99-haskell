data ListItem a = Single a | Multiple Int a
    deriving (Show)

encodeMod :: Eq s => [s] -> [ListItem s]

encodeMod s = [f | x <- pack s, let f = if (length x == 1) then Single (head x) else Multiple (length x) (head x) ]

pack :: Eq a => [a] -> [[a]]
pack [] = []
pack [a] = [[a]]
pack (x:xs)
    | x == head h_p_xs  = (x:h_p_xs):t_p_xs
    | otherwise         = [x]:p_xs
    where p_xs@(h_p_xs:t_p_xs) = pack xs
