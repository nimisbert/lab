-- Author : Sascha Bubeck 
module Main where
import qualified Graphics.Gloss as GG
import Graphics.Gloss.Data.ViewPort
import Linear

-- Data
type Force        = V2 Float
type Position     = V2 Float
type Velocity     = V2 Float
type Acceleration = V2 Float 
type Index        = Int 
type TimeStep     = Float
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

verletStep :: Float -> Model -> Model 
verletStep dt particles = 
    let 
        oldF     = calcForces particles
        oldA     = fmap (^/m) oldF
        newPos   = updatePositions dt particles oldA
        newF     = calcForces newPos
        newA     = fmap (^/m) newF
        addedF   = oldA ^+^ newA
        newParts = updateVelocities dt newPos addedF
    in  newParts

updatePosition :: TimeStep -> Particle -> Acceleration -> Particle 
updatePosition dt (Particle idx pos vel) acc = (Particle idx newPos vel)
    where 
        newPos  = pos ^+^ velPart ^+^ accPart
        velPart = vel ^* dt
        accPart = acc ^* (0.5 * dt**2)

updateVelocity :: TimeStep -> Particle -> Acceleration -> Particle
updateVelocity dt particle acc = Particle idx pos vel'
    where 
        (Particle idx pos vel) = particle 
        transVec = boundaryCondition particle
        vel' = transVec * (vel + (0.5 * dt) *^ acc)
 
updatePositions, updateVelocities :: TimeStep -> [Particle] -> [Acceleration] -> [Particle]
updatePositions  dt = zipWith (updatePosition dt)
updateVelocities dt = zipWith (updateVelocity dt) 

calcForceBetween :: Particle -> Particle -> Force 
calcForceBetween particleA particleB 
    | particleA == particleB = V2 0.0 0.0
    | otherwise = rep - att
    where 
        rep = repulsion posA posB
        att = attraction posA posB
        posA = pos particleA
        posB = pos particleB

sigma, sigma6, sigma12, epsilon, m :: Float
sigma   = 0.335
sigma6  = sigma^6
sigma12 = sigma^12
epsilon = 12.57
m       = 18

repulsion, attraction :: Position -> Position -> Force 
repulsion posA posB = (epsilon * 48.0 * sigma12 / divisor ) *^ r
    where divisor = (norm r)^14
          r = posB ^-^ posA
attraction posA posB = (epsilon * 24.0 * sigma6 / divisor ) *^ r
    where divisor = (norm r)^8
          r = posB ^-^ posA

calcForceOnOne :: Particle -> [Particle] -> [Force]
calcForceOnOne particle = fmap (calcForceBetween particle)

calcForceAcc :: [Particle] -> [Particle] -> [Force]
calcForceAcc [particle] particles = calcForceOnOne particle particles
calcForceAcc (p:articles) particles = calcForceOnOne p particles
                                    ^+^ calcForceAcc articles particles
 
calcForces :: [Particle] -> [Force] 
calcForces particles = calcForceAcc particles particles

-- Main Display
main :: IO()
main = GG.simulate windowDisplay GG.white simulationRate initialModel drawingFunc updateFunc
    where
        initialModel :: Model 
        initialModel = [Particle 1 (V2   0.3  0.0) (V2 0.0 0.0), 
                        Particle 2 (V2 (-0.3) 0.0) (V2 0.0 0.0)]
        drawingFunc :: Model -> GG.Picture 
        drawingFunc = GG.pictures . (:) drawWalls . fmap drawParticle
        updateFunc :: ViewPort -> Float -> Model -> Model 
        updateFunc _ dt = verletStep dt
        drawWalls :: GG.Picture
        drawWalls = GG.lineLoop $ GG.rectanglePath (toPixels aLength) (toPixels bLength)
        windowDisplay :: GG.Display
        windowDisplay = GG.InWindow "MD in Haskell" (800, 800) (200, 800)
        simulationRate :: Int
        simulationRate = 60
