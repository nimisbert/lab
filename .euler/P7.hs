-- Find the 10 001st prime number

answer :: Int
answer = last $ take 10001 primes

-- haskell.org on prime numbers
primes = eratos [2..]
    where eratos [] = []
          eratos (p:xs) = p : eratos (xs `minus` [p, p+p ..])

-- old, ordered lists, difference and union
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
