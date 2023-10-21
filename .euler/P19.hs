-- Counting Sundays

answer :: Int 
answer = sum $ map firstOfMonths [1901,1902 .. 2000]

firstOfMonths :: Int -> Int
firstOfMonths y = foldl f 0 [1,2,3,4,5,6,7,8,9,10,11,12]
    where f acc x = if (dayOfWeekRFC $ zellerRFC3339 1 x y) == "Sun" then acc+1 else acc 

zellerRFC3339 :: Int -> Int -> Int -> Int 
zellerRFC3339 d m y = (d + (13*(l+1)`div`5) + k + (k`div`4) + 5) `mod` 7
    where l = if (m == 1) || (m == 2) then m+12 else m
          k = if (m == 1) || (m == 2) then y-1  else y

dayOfWeekRFC :: Int -> String
dayOfWeekRFC i = ["Sun", "Mon", "Tue", "Wed", "Thu", "Fri", "Sat"]!!i
