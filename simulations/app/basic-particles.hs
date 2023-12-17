-- Author : Sascha Bubeck 
module Main where
import qualified Graphics.Gloss as GG
import Graphics.Gloss.Data.ViewPort
import Linear

-- Data
type Position = V2 Float
type Velocity = V2 Float
type Index    = Int 
type TimeStep = Float 
data Particle = Particle {
    idx :: Index,
    pos :: Position,
    vel :: Velocity
}
instance Eq Particle where 
    ballA == ballB = idx ballA == idx ballB

-- Model
type Model = [Particle]

-- Drawing
drawingFunc :: Model -> GG.Picture
drawingFunc = GG.pictures . fmap drawParticle

drawParticle :: Particle -> GG.Picture
drawParticle (Particle _ (V2 x y) _) =
    GG.translate x' y' $ color (GG.circleSolid $ toPixels dotSize)
    where
        x' = toPixels x
        y' = toPixels y 
        color = GG.Color (GG.withAlpha 0.8 GG.blue)

toPixels :: Float -> Float 
toPixels = (*100.0)

dotSize :: Float
dotSize = 0.1

-- Update
updateFunc :: ViewPort -> TimeStep -> Model -> Model
updateFunc _ dt = newton dt

newton :: TimeStep -> Model -> Model 
newton dt [Particle idx pos vel] = [Particle idx pos' vel]
    where
        pos' = pos + vel ^* dt

-- Main Display
main :: IO()
main = GG.simulate windowDisplay GG.white simulationRate initialModel drawingFunc updateFunc
    where
        initialModel :: Model 
        initialModel = [Particle 1 (V2 0.0 0.0) (V2 1.0 0.0)]
        drawingFunc :: Model -> GG.Picture 
        drawingFunc = GG.pictures . fmap drawParticle
        updateFunc :: ViewPort -> Float -> Model -> Model 
        updateFunc _ dt = newton dt
        windowDisplay :: GG.Display
        windowDisplay = GG.InWindow "MD in Haskell" (800, 800) (200, 800)
        simulationRate :: Int
        simulationRate = 60
