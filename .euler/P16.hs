-- Sum of the digits of 2^1000

module P16 ( rdigits ) where 

rdigits 0 = []
rdigits x = x `mod` 10 : rdigits (x `div` 10) 

answer = sum $ rdigits (2^1000)
