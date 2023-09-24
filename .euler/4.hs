-- Largest palindrome number made from the product of two 3-digit numbers
-- Test for 2-digit numbers => 91 x 99 = 9009

isPalindrome :: Int -> Bool
isPalindrome n = (reverse $ show n) == show n

palindromes :: Int -> Int -> [Int] 
palindromes l u = filter isPalindrome [x*y | x<-[l, l+1 .. u], y<-[l, l+1 .. u]]

answer :: Int
answer = maximum $ palindromes 100 999
