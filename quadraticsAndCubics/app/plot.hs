module Main where 
import Graphics.Gloss as GG
import Graphics.Gloss.Data.ViewPort
import Quadratics as Q
import Linear

-- Params

-- Model 
type TimeStep = Float
data Model    = Model {
    f  :: Q.Quadratic,
    x  :: [Float],
    r  :: Float,
    xs :: (Float, Float)
}

-- Draw
drawFunc :: Model -> GG.Picture
drawFunc (Model f x r xs) = pictures $ map GG.Line datapoints
    where datapoints = [zip x $ map (Q.apply f) x]

updateFunc :: ViewPort -> TimeStep -> Model -> Model
updateFunc (ViewPort t _ _) dt (Model f _ r xs) = (Model f x r xs)
    where x = map (subtract (fst t)) [xmin,xmin+r..xmax]
          xmin = fst xs
          xmax = snd xs


-- Main
main :: IO()
main = GG.simulate windowDisplay GG.white rate init drawFunc updateFunc
    where 
        rate = 60 -- 60 fps
        xmin = -800
        xmax = 800
        r    = 1
        init = (Model (Q.Quadratic 0.01 0.01 (-0.01)) [] 1 ((-100), 100))
        windowDisplay = GG.InWindow "a" (800, 800) (200, 800)
