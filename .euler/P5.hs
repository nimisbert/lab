-- Smallest positive number evenly divisible by numbers 1 to 20
-- Test 2520 is the smallest positive number evenly divisible by numbers 1 to 10

import P3 ( trialDivision )
import Data.List ( group, sort, maximumBy, nub, sortBy, groupBy ) 
import Data.Ord ( comparing )
import Control.Arrow ((&&&))

countOccurences :: Ord a => [a] -> [(a, Int)]
countOccurences = map (head &&& length) . group . sort

largestFactors :: [Int] -> [(Int, Int)]
largestFactors n =
    sortBy (comparing fst)
    $ nub
    $ map (maximumBy (comparing snd))
    $ map (countOccurences . trialDivision) n

keepLargestPowers :: [(Int, Int)] -> [(Int, Int)]
keepLargestPowers [] = []
keepLargestPowers (x:xs)
    | xs == [] = x:[]
    | fst x == (fst $ head xs) = keepLargestPowers xs
    | otherwise = x:keepLargestPowers xs

answerHelper :: Int -> [(Int, Int)] -> Int
answerHelper acc [] = acc 
answerHelper acc (x:xs) = answerHelper (acc * (fst x ^ snd x)) xs

answer :: [Int] -> Int
answer n = answerHelper 1 $ keepLargestPowers $ largestFactors n 
