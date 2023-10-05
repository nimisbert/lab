-- What is the value of the first triangle number to have over 500 divisors ? 

import Data.List (sort, group)

sumOfn :: Int -> Int
sumOfn n = n*(n+1) `div` 2

nTriNumB :: Int -> [Int]
nTriNumB n = map sumOfn [n, n-1 .. 1]

nTriNumUB :: [Int]
nTriNumUB = map sumOfn [1,2..]

-- naive 
divisorsOfnF :: Int -> [Int]
divisorsOfnF n = filter (\x -> n `mod` x == 0) [1..n]

-- better
divisorsOfn :: Int -> [Int]
divisorsOfn n = 
    map head.group.sort $ foldr f [] l    
    where l = [1,2 .. (ceiling.sqrt) $ fromIntegral n]
          f x acc = if n `mod` x == 0 then (n`div`x):x:acc else acc

answer :: Int
answer = until (\x -> (length.divisorsOfn.sumOfn) x > 500) (\x -> x+1) 1
