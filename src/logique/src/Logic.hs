-- Logique en Haskell
--
module Logic(
      Assert(..)
    , implies
    , equivalent
) where

type Assert = Bool

implies :: Assert -> Assert -> Bool 
implies p q 
    | (p == True) && (q == True) = True
    | (p == True) && (q == False) = False
    | (p == False) && (q == True) = True
    | (p == False) && (q == False) = True
    | otherwise = False -- should never happen

equivalent :: Assert -> Assert -> Bool
equivalent p q 
    | (p `implies`q) && (q `implies` p) = True
    | otherwise = False
