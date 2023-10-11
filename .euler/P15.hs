-- Number of lattice paths of a 20x20 grid with only down and right movements ?
-- Test 2x2 -> 6 paths

binom n k = product [1+n-k..n] `div` product [1..k]
 
answer n = binom (2*n) n
