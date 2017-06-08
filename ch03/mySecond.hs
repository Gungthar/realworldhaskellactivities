--file ch03/mySecond.hs
mySecond :: [a] -> a
safeSecond :: [a] -> Maybe a
 
mySecond xs = if null (tail xs)
	then error "list is too short"
	else head (tail xs)

safeSecond [] = Nothing
safeSecond xs = if null (tail xs)
	then Nothing
	else Just (head (tail xs))
