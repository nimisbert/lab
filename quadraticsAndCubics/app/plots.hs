module Main where 
import Graphics.Gloss
import Polynomials 

main :: IO()
main = display window black . scale 20 20 . pictures $ [
      color white $ Line [ (0, -20), (0, 20) ]
    , color white $ Line [ (-20, 0), (20, 0) ]
    , color red q2bPlot
    , color blue q2cPlot
    , color white q2bRoot0
    , color white q2bRoot1
    , color white $ Translate (head $ getRoots q2b) (-1) $ Scale 0.009 0.009 $ Text (show (head $ getRoots q2b)) -- ugly af magic numbers for text scaling
    , color white $ Translate (last $ getRoots q2b) (-1) $ Scale 0.009 0.009 $ Text (show (last $ getRoots q2b))
    , color red   $ Translate 0 q2byIntercept $ Scale 0.009 0.009 $ Text (show q2byIntercept)
    , color blue  $ Translate 0 q2cyIntercept $ Scale 0.009 0.009 $ Text (show q2cyIntercept)
    ]

-- A-Level, CGP, chapter 3, Exercice 3.1, Question 2b 
q2b = Polynomial [1, -10, 9]
q2bPlot  = plotFunction (apply q2b) [-20.0, -19.9 .. 20.0]
q2bRoot0 = Translate (head $ getRoots q2b) 0 (ThickCircle 0.1 0.2)
q2bRoot1 = Translate (last $ getRoots q2b) 0 (ThickCircle 0.1 0.2)
q2byIntercept = apply q2b 0

q2c = Polynomial [-1, 10, -9]
q2cPlot = plotFunction (apply q2c) [-20.0, -19.9 .. 20.0]
q2cyIntercept = apply q2c 0

window ::  Display
window = InWindow "Polynomial plots" (800, 600) (20, 20)

plotFunction :: (Float -> Float) -> [Float] -> Picture
plotFunction f x = pictures $ map Line datapoints
    where datapoints = [zip x $ map f x]