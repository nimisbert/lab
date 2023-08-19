module Exe15() where 
import Polynomials
import Data.Maybe(fromMaybe)

q1a :: Float -> Float
q1a x = 2*x + 4*x**(1/2) - 7
a1a :: Float -> Float 
a1a x = 2*u**2 + 4*u - 7
    where u = x**(1/2)

q1b :: Floating a => a -> a
q1b x = exp x * (exp x - 6) - 8 
a1b :: Floating a => a -> a
a1b x = u**2 - 6*u - 8
    where u = exp x

q1c :: Float -> Float 
q1c x = 5**x + 5**(2*x) - 4
a1c :: Float -> Float 
a1c x = u**2 + u - 4
    where u = 5**x

q1d :: Float -> Float 
q1d x = 2* cos x **2 + 3 - 5 * cos x
a1d :: Float -> Float 
a1d x = 2*u**2 - 5*u + 3 
    where u = cos x 

-- Q2 
q2 :: Float -> Float 
q2 x = 3 / (5*x+2)**2 + 1 / (5*x+2) - 10

q2u :: Float -> Float 
q2u x = 3 * u**2 + u - 10
    where u = 1 / 5*x+2

q2uRoots :: Maybe (Float, Float)
q2uRoots = computeRoots $ Quadratic 3 1 (-10)

q2xRoots :: Maybe (Float, Float)
q2xRoots =
    case q2uRoots of 
        Just (u0, u1) -> Just (((1/u0)-2)/5, ((1/u1)-2)/5)
        Nothing -> Nothing 