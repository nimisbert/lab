-- Find the 10 001st prime number

-- Haskell's wiki article on pirme numbers

import Data.List ((\\), minus, union, unionAll )

primesTo m = naiveSieve [2 .. m] -- m, bounded
    where naiveSieve (x:xs) = x : naiveSieve ( xs \\ [x, x+x .. m] ) -- 
          naiveSieve [] = []

