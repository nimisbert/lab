module Main where 
import Logic

l :: Assert -> Assert -> Bool
l a b = not (a && b)

r :: Assert -> Assert -> Bool 
r a b = (not a) || (not b)

main = do 
-- l equivalent to r, proof by exhaustion
--  Case 1 : a false, b false
    putStrLn $ "Case 1: " ++ show ((l False False) `equivalent` (r False False))
--  Case 2 : a false, b true
    putStrLn $ "Case 2: " ++ show ((l False True) `equivalent` (r False True))
--  Case 3 : a true, b false
    putStrLn $ "Case 3: " ++ show ((l True False) `equivalent` (r True False))
--  Case 4 : a true, b true
    putStrLn $ "Case 4: " ++ show ((l True True) `equivalent` (r True True))