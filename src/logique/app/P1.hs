module Main where
import Logic

-- Proof that : lm <-> rm

lm :: Assert -> Assert -> Bool
lm a b = not $ a || b

rm :: Assert -> Assert -> Bool
rm a b = (not a) && (not b)

main :: IO ()
main = do
-- Step 1 : lm <-> rm, proof by exhaustion
--  Case 1 : A false, B false
    putStrLn $ "Case 1: " ++ show ((lm False False) `equivalent` (rm False False))
--  Case 2 : A false, B true
    putStrLn $ "Case 2: " ++ show ((lm False True) `equivalent` (rm False True))
--  Case 3 : A true, B false
    putStrLn $ "Case 3: " ++ show ((lm True False) `equivalent` (rm True False))
--  Case 4 : A true, B true
    putStrLn $ "Case 4: " ++ show ((lm True True) `equivalent` (rm True True))