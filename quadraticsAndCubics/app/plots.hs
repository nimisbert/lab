module Main where 
import Graphics.Gloss
import Polynomials (computePolynomial)

main :: IO()
main = display window black . scale 20 20 . pictures $ [
      color white $ Line [ (0, -20), (0, 20) ]
    , color white $ Line [ (-20, 0), (20, 0) ]
    ]

window ::  Display
window = InWindow "Polynomial plots" (800, 600) (20, 20)