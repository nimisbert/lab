-- Sum of primes bellow 2 000 000
-- Test 10 : 2 + 3 + 5 + 7 = 17

import P7

primesToQ m = eratos [2..m] 
    where
    eratos []     = []
    eratos (p:xs) = p : eratos (xs `minus` [p*p, p*p+p..m])
 
 -- ordered lists, difference and union
minus (x:xs) (y:ys) = case (compare x y) of 
           LT -> x : minus  xs  (y:ys)
           EQ ->     minus  xs     ys 
           GT ->     minus (x:xs)  ys
minus  xs     _     = xs
union (x:xs) (y:ys) = case (compare x y) of 
           LT -> x : union  xs  (y:ys)
           EQ -> x : union  xs     ys 
           GT -> y : union (x:xs)  ys
union  xs     []    = xs
union  []     ys    = ys

-- 
answer = foldr (+) 0 $ primesToQ 2000000
