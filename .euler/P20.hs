-- Factorial Sum Digit

import P16 

answer = sum $ rdigits $ fac 100

fac n = product [1..n]
