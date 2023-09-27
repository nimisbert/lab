-- Find Square of sum - Sum of the squares of numbers for 1 to 100 
-- Test 2640 = 3025 - 385 = (1 + 2 + ... + 10)^2 - (1^2 + 2^2 + ... + 10^2)

-- a = (S x)^2 - S x^2
-- a = ( n*(n-1)/2 )^2 - ( n*(n+1)*(2*n+1) / 6 )

import P1 ( sumOfn )

sumOfTheSquares :: Int -> Int
sumOfTheSquares n = (n * (n+1) * (2*n+1)) `div` 6

answer :: Int 
answer = (sumOfn 100)^2 - sumOfTheSquares 100
