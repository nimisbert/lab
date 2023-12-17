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

boundaryCondition :: Particle -> V2 Float
boundaryCondition (Particle _ (V2 x y) _)
    | (x' > aLength/2) && (y' > bLength/2) = V2 (-1) (-1)
    |  x' > aLength/2                      = V2 (-1)   1
    |  y' > bLength/2                      = V2   1  (-1)
    | otherwise                            = V2   1    1
    where 
        x' = abs x + dotSize
        y' = abs y + dotSize 

aLength, bLength :: Float
aLength = 7.0
bLength = 7.0

-- Drawing
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
newton :: TimeStep -> Model -> Model 
newton dt [Particle idx pos vel] = [Particle idx pos' vel]
    where
        pos' = pos + vel ^* dt

newtonBounce :: Float -> Model -> Model
newtonBounce dt [particle@(Particle idx pos vel)] = [Particle idx pos' vel']
    where 
        transVec = boundaryCondition particle
        vel' = transVec * vel
        pos' = pos + vel' ^* dt

-- Main Display
main :: IO()
main = GG.simulate windowDisplay GG.white simulationRate initialModel drawingFunc updateFunc
    where
        initialModel :: Model 
        initialModel = [Particle 1 (V2 0.0 0.0) (V2 1.0 0.0)]
        drawingFunc :: Model -> GG.Picture 
        drawingFunc = GG.pictures . (:) drawWalls . fmap drawParticle
        updateFunc :: ViewPort -> Float -> Model -> Model 
        updateFunc _ dt = newtonBounce dt
        drawWalls :: GG.Picture
        drawWalls = GG.lineLoop $ GG.rectanglePath (toPixels aLength) (toPixels bLength)
        windowDisplay :: GG.Display
        windowDisplay = GG.InWindow "MD in Haskell" (800, 800) (200, 800)
        simulationRate :: Int
        simulationRate = 60
