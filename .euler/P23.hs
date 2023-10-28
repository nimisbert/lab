-- Non abundant Sum

import P12
import P21

import Data.List ( sort,group )

-- answer = filter (/=0) $ map abundant [1,2 .. 28123]
-- trouver les nombres qui ne sont pas la somme de deux abondant
--

answer = sum $ notSumOfAbundants sumOfTwoAbundants [1,2 .. 28123]

notSumOfAbundants :: [Int] -> [Int] -> [Int] 
notSumOfAbundants x y = filter (`notElem` x) y

sumOfTwoAbundants = 
    rmdups $
    filter (<=28123) $
    [ x+y | x<-abun, y<-abun ]
    where abun = filter abundant [1,2 .. 28123]

rmdups :: (Ord a) => [a] -> [a]
rmdups = map head . group . sort 

perfect :: Int -> Bool 
perfect n
    | n == (d n) = True
    | otherwise  = False

abundant :: Int -> Bool
abundant n
    | n < (d n) = True 
    | otherwise = False

deficient :: Int -> Bool
deficient n 
    | n > (d n) = True
    | otherwise = False
