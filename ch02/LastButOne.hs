--file: ch02/lastButOne.hs
lastButOne xs = if length xs == 2maybe 
	then head xs 
	else lastButOne (tail xs)
	 
