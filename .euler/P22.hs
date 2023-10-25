-- Name scores
-- score exemple : COLIN, 3+15+12+9+14=53, 938th x 53 = 49714

import System.IO
import Control.Monad
import Data.Char (ord)

main = do 
    handle <- openFile "names.txt" ReadMode
    content <- hGetContents handle
    let names = words content
    let sortedNames = alphabeticalSort names
    --print sortedNames
    let numbers = map nameToNumber sortedNames
    let numbersIndexes = [1 .. length numbers]
    let scores = zipWith (*) numbersIndexes numbers
    print $ sum scores

nameToNumber :: String -> Int 
nameToNumber name = foldl (\acc x -> acc+(ord x)-64) 0 name

alphabeticalSort :: [String] -> [String]
alphabeticalSort [] = []
alphabeticalSort (x:xs) = 
    let smallerSorted = alphabeticalSort [ a | a <- xs, a <= x ]
        biggerSorted  = alphabeticalSort [ a | a <- xs, not $ alphabeticalOrder a x ]
    in smallerSorted ++ [x] ++ biggerSorted

alphabeticalOrder :: String -> String -> Bool
alphabeticalOrder [] (y:ys) = True
alphabeticalOrder (x:xs) [] = False
alphabeticalOrder (x:xs) (y:ys)
    | x < y     = True
    | x == y    = alphabeticalOrder xs ys
    | x > y     = False
    | otherwise = False
