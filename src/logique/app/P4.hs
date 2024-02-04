module Main where 
import Logic

l :: Assert -> Assert -> Assert -> Bool
l a b c = (a && b) || c

r :: Assert -> Assert -> Assert -> Bool 
r a b c = (a || c) && (b || c)

main = do 
-- l equivalent to r, proof by exhaustion
--            a      b      c
-- Case 1 : false, false, false
-- Case 2 : false, false, true
-- Case 3 : false, true , false 
-- Case 4 : false, true , true
-- Case 5 : true , false, false
-- Case 6 : true , false, true
-- Case 7 : true , true , false 
-- Case 8 : true , true , true
    putStrLn $ "Case 1 : " ++ show ((l False False False) `equivalent` (r False False False))
    putStrLn $ "Case 2 : " ++ show ((l False False True ) `equivalent` (r False False True ))
    putStrLn $ "Case 3 : " ++ show ((l False True  False) `equivalent` (r False True  False))
    putStrLn $ "Case 4 : " ++ show ((l False True  True ) `equivalent` (r False True  True ))
    putStrLn $ "Case 5 : " ++ show ((l True  False False) `equivalent` (r True  False False))
    putStrLn $ "Case 6 : " ++ show ((l True  False True ) `equivalent` (r True  False True ))
    putStrLn $ "Case 7 : " ++ show ((l True  True  False) `equivalent` (r True  True  False))
    putStrLn $ "Case 8 : " ++ show ((l True  True  True ) `equivalent` (r True  True  True ))