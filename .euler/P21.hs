-- Amicable Numbers

import P12

answer :: Int
answer = sum $ map amicable [1,2 .. 9999]

amicable :: Int -> Int
amicable n
    | (n == (d.d) n) && (n /= d n) = n
    | otherwise                    = 0

d :: Int -> Int 
d n = if (length $ divisorsOfn n) /= 0 then 
        sum $ init $ divisorsOfn n else
        0
