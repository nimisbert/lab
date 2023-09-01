module Main where 
import Exe31
import Graphics.Gloss
import Polynomials (computePolynomial)

main :: IO()
main = display window black . scale 20 20 . pictures $ [
      color white $ Line [ (0, -20), (0, 20) ]
    , color white $ Line [ (-20, 0), (20, 0) ]
    , color red a1a
    , color blue a1b
    , color green a1c
    ]

window ::  Display
window = InWindow "Exercice 3.1 q1" (800, 600) (20, 20)

a1a :: Picture 
a1a = plotFunction (computePolynomial q1a) [-10.0, -9.9 .. 10.0]

a1b :: Picture
a1b = plotFunction (computePolynomial q1b) [-10.0, -9.9 .. 10.0]

a1c :: Picture
a1c = plotFunction (computePolynomial q1c) [-10.0, -9.9 .. 10.0]

plotFunction :: (Float -> Float) -> [Float] -> Picture
plotFunction f x = pictures $ map Line datapoints
    where datapoints = [zip x $ map f x]