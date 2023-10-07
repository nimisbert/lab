-- Longest Collatz Sequence

import Data.List ( maximumBy )
import Data.Ord ( comparing )

answer = map (length.collatz) [1,2 .. 1000000]

maxi xs = maximumBy (comparing fst) (zip xs [1..])

collatz :: Int -> [Int]
collatz n
    | n == 1    = [1]
    | even n    = n:collatz eveStep
    | odd  n    = n:collatz oddStep
    | otherwise = []
    where eveStep = div n 2 
          oddStep = 3*n + 1
