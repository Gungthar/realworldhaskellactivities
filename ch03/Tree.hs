--file ch03/Tree.hs
data Tree a = Node a (Tree a) (Tree a)
	|Empty
	deriving (Show)

