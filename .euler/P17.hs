-- Sum of letters of numbers from 1 to 1000

answer = (sum $ map numberToStringLength [1..999]) + length "onethousand"

numberToStringLength :: Int -> Int 
numberToStringLength num = sum $ map length $ words $ numberToString num

numberToString :: Int -> String
numberToString n =
    if length tens /= 0 && length hundred /= 0
    then hundred ++ " and " ++ tens
    else hundred ++ tens
    where hundred = hundredsToWord numHundred 
          ten = tensToWord numTen
          unit = unitsToWord numUnit
          tens = if numTen == 0 && numUnit == 0
                 then
                    ""
                 else 
                    if numTen == 1 && numUnit /= 0 
                    then uniquesToWord numUnit 
                    else ten ++ " " ++ unit
          numThousand = ((n `div` 1000) `mod` 10)
          numHundred  = ((n `div` 100) `mod` 10)
          numTen      = ((n `div` 10) `mod` 10)
          numUnit     = ((n `div` 1) `mod` 10)

unitsToWord :: Int -> String
unitsToWord d
    | d ==  0 = ""
    | d ==  1 = "one"
    | d ==  2 = "two"
    | d ==  3 = "three"
    | d ==  4 = "four"
    | d ==  5 = "five"
    | d ==  6 = "six"
    | d ==  7 = "seven"
    | d ==  8 = "eight"
    | d ==  9 = "nine"
    | otherwise = "zero"

uniquesToWord :: Int -> String
uniquesToWord d
    | d == 0 = ""
    | d == 1 = "eleven"
    | d == 2 = "twelve"
    | d == 3 = "thirteen"
    | d == 4 = "fourteen"
    | d == 5 = "fifteen"
    | d == 6 = "sixteen"
    | d == 7 = "seventeen"
    | d == 8 = "eighteen"
    | d == 9 = "nineteen"
    | otherwise = "ten"

tensToWord :: Int -> String
tensToWord d 
    | d == 0 = ""
    | d == 1 = "ten"
    | d == 2 = "twenty"
    | d == 3 = "thirty"
    | d == 4 = "forty"
    | d == 5 = "fifty"
    | d == 6 = "sixty"
    | d == 7 = "seventy"
    | d == 8 = "eighty"
    | d == 9 = "ninety"

hundredsToWord :: Int -> String
hundredsToWord d 
    | d == 0 = ""
    | d == 1 = "one hundred"
    | d == 2 = "two hundred"
    | d == 3 = "three hundred"
    | d == 4 = "four hundred"
    | d == 5 = "five hundred"
    | d == 6 = "six hundred"
    | d == 7 = "seven hundred"
    | d == 8 = "eight hundred"
    | d == 9 = "nine hundred"
    | otherwise = "zero"

thousandsToWord :: Int -> String 
thousandsToWord d
    | d == 0 = ""
    | d == 1 = "one thousand"
    | otherwise = "zero"
