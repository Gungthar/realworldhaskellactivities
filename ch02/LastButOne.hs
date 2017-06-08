--file: ch02/lastButOne.hs
lastButOne xs = if length xs == 2
	then head xs 
	else lastButOne (tail xs)
	 
