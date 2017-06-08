--file ch03/ex1
type tofind = [a]

myLength theList = let n = 0
		in  if null xs
                     then n
                     else myLength (n + 1) (tail xs)
