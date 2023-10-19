-- Maximum of path in maximum-path-sum-I.txt triangle ?

import System.IO
import Control.Monad

main = do 
    handle <- openFile "maximum-path-sum-I.txt" ReadMode
    content <- hGetContents handle
    let triangleText = map words $ lines content
    let triangle = reverse $ foldr (\x acc -> (map strToInt x):acc) [] triangleText 
    let answer = resolveLayer triangle
    print triangle
    print answer
    
resolveLayer :: [[Int]] -> [[Int]]
resolveLayer x
    | length x == 0 = x
    | length x == 1 = x
    | otherwise     = resolveLayer ((resolveLayerHelp upperRow lowerRow):(((tail.tail) x)))
    where lowerRow  = head x
          upperRow  = head $ tail x

resolveLayerHelp :: [Int] -> [Int] -> [Int]
resolveLayerHelp [] _ = []
resolveLayerHelp _ [] = []
resolveLayerHelp (x:xs) (y:ys) = 
    (smallerTriangleMax x y (head ys)):resolveLayerHelp xs ys

smallerTriangleMax :: Int -> Int -> Int -> Int
smallerTriangleMax node left right
    | node+left < node+right = node+right
    | otherwise              = node+left

strToInt :: String -> Int 
strToInt x = read x :: Int
