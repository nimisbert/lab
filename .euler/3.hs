-- Largest Prime Factor of 600851475143
-- Test 13195 -> 5, 7, 13, 29

-- Finding prime factors by trial division method

trialDivisionHelper :: Int -> Int -> [Int]
trialDivisionHelper f n 
    | n <= 1          = []
    | n `mod` f == 0 = f:trialDivisionHelper f (n `div` f)
    | otherwise      = trialDivisionHelper (f+1) n

trialDivision :: Int -> [Int]
trialDivision = trialDivisionHelper 2

answer :: Int 
answer = maximum $ trialDivision 600851475143
