-- Find the sum of even valued terms, below 4 000 000, of Fibonacci sequence

binet :: Int -> Int
binet n = round $ (1 / sqrt 5) * (phi^n - (-1/phi)^n)
    where phi = (1+sqrt 5) / 2

answer :: Int -> Int 
answer n = sum $ filter (\x -> even x && 0 < x && x < 4000000) $ map binet [0,1 .. 100]
