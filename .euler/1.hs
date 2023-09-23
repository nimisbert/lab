-- Sum of multiples of 3 or 5 up to 1000
-- Multiples of 3 : 3, 6, 9, 12 ... = 3*(1+2+3+...)
-- Multiples of 5 : 5, 10, 15, ...  = 5*(1+2+3+...)
-- Sum of n : n*(n+1) / 2
-- Multiples of 3 and 5 : 15*(1+2+3+...)

sumOfn :: Int -> Int 
sumOfn n = n*(n+1) `div` 2

answer :: Int -> Int 
answer n = 3 * (sumOfn $ n`div`3) 
         + 5 * (sumOfn $ n`div`5)
         -15 * (sumOfn $ n`div`15)
