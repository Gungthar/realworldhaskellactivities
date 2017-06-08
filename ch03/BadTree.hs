--file ch03/badTree.hs

data Node = Node Int Int Int

nodesAreSame (Node a c e) (Node b d f)
 | a == b        = Just a
  | c == d        = Just c
   | e == f        = Just e 
nodesAreSame _ _ = Nothing
