pack :: Eq a => [a] -> [[a]]
pack [] = []
pack [a] = [[a]]
pack (x:xs)
    | x == head h_p_xs  = (x:h_p_xs):t_p_xs
    | otherwise         = [x]:p_xs
    where p_xs@(h_p_xs:t_p_xs) = pack xs
