module Main where
import Logic

-- Proof that : lm equivalent to rm

lm :: Assert -> Assert -> Bool
lm a b = not (a || b)

rm :: Assert -> Assert -> Bool
rm a b = (not a) && (not b)

main :: IO ()
main = do
-- lm equivalent to rm, proof by exhaustion
--  Case 1 : a false, b false
    putStrLn $ "Case 1: " ++ show ((lm False False) `equivalent` (rm False False))
--  Case 2 : a false, b true
    putStrLn $ "Case 2: " ++ show ((lm False True) `equivalent` (rm False True))
--  Case 3 : a true, b false
    putStrLn $ "Case 3: " ++ show ((lm True False) `equivalent` (rm True False))
--  Case 4 : a true, b true
    putStrLn $ "Case 4: " ++ show ((lm True True) `equivalent` (rm True True))