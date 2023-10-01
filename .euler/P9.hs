-- Special Pythagorean Triplet
-- (1) | a^2 + b^2 = c^2
-- (2) | a + b + c = 1000 ; such that a < b < c

getc :: Int -> Int -> Int
getc a b = 1000 - a - b

-- by replacing c from (1) in (2)
getb :: Int -> Int 
getb a = (1000000 - 2000*a) `div` (2000-2*a)

--
check :: Int -> Int -> Int -> Bool
check a b c =  a^2 + b^2 == c^2
            && a + b + c == 1000
            && (a < b) && (b < c)

try :: Int -> Bool
try a = check a b c 
    where b = getb a
          c = getc a b

indexOfAnswer :: [Bool] -> Int -> Int
indexOfAnswer (x:xs) i
    | x == True = i
    | otherwise = indexOfAnswer xs (i+1)


answer :: Int
answer = a*b*c
    where a = indexOfAnswer (map try [1..999]) 1
          b = getb a
          c = getc a b
