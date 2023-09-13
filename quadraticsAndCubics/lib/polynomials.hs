module Polynomials (
      Polynomial(..)
    , apply
    , getRoots
) where
import Data.Maybe ( fromMaybe )

-- i.e. : f(x) = (c_n)*x^n + ... + (c_1)*x + c_0 = [ c_n ..  c_1, c_0 ]
data Polynomial = 
    Polynomial [Float] 
  | Complement [Float] -- Quadratic Square Complement [p, q, r]
  deriving(Show)


apply :: Polynomial -> Float -> Float 
apply (Polynomial [])           _ = 0 
apply (Polynomial [a, b, c])    x = a*x^2 + b*x + c
apply (Complement [p, q, r])    x = p*(x+q)^2 + r
apply (Polynomial [a, b, c, d]) x = a*x^3 + b*x^2 + c*x + d 


getRoots :: Polynomial -> [Float]
getRoots (Polynomial [a, b, c]) 
  | delta >  0 = [ x0 , x1 ]
  | delta == 0 = [ x0 ] 
  | otherwise  = []
  where 
    delta = getDiscriminant (Polynomial [a, b, c])
    x0 = (-b - sqrt delta ) / (2*a)
    x1 = (-b + sqrt delta ) / (2*a)
getRoots (Complement [p, q, r])
  | (- r)/p > 0  = [ x0, x1 ]
  | (- r)/p == 0 = [ x0 ]
  | otherwise    = [] 
  where 
    x0 = -q - sqrt ((-r)/p)
    x1 = -q + sqrt ((-r)/p)


toSquareComplement :: Polynomial -> Polynomial
toSquareComplement (Polynomial [a, b, c]) = 
  let q = b / (2*a) in Complement [a, q, c - (a*(q^2))]


toDeveloped :: Polynomial -> Polynomial
toDeveloped (Complement [p, q, r]) =
  Polynomial [p, p*2*q, r+p*q^2]


numberOfRealRoots :: Polynomial -> Int 
numberOfRealRoots (Polynomial [a, b, c])
  | signum delta == 0 = 1
  | signum delta >  0 = 2
  | otherwise         = 0 
  where 
    delta = getDiscriminant (Polynomial [a, b, c])
numberOfRealRoots (Complement [p, q, r])
  | signum r == 0        = 1
  | signum p /= signum r = 2
  | otherwise            = 0


getVertex :: Polynomial -> (Float, Float)
getVertex (Polynomial [a, b, c]) = (-q, r)
  where (Complement [p, q, r]) = toSquareComplement (Polynomial [a, b, c])
getVertex (Complement [p, q, r]) = (-q, r)


getDiscriminant :: Polynomial -> Float
getDiscriminant (Polynomial [a, b, c]) = b**2 - 4*a*c


describeQuadratic :: Polynomial -> String 
describeQuadratic (Polynomial [a, b, c]) = 
  "\r\n" ++ show a ++ "x^2 + " ++ show b ++ "x + " ++ show c ++ ", is an " ++ shape ++ "-shape Parabola.\r\n" 
  ++ "it's vertex is " ++ show vertex ++ ".\r\n"
  ++ "it's y-intercept is " ++ show (0.0, yinter) ++ ".\r\n"
  ++ xinter 
  where polynomial = Polynomial [a, b, c]
        shape = if a > 0.0 then "u" else "n"
        vertex = getVertex polynomial
        yinter = apply polynomial 0.0
        xinter
          | numberOfRealRoots polynomial == 0 = "it has no real roots.\r\n"
          | numberOfRealRoots polynomial == 1 = "it has one real root, " ++ show (getRoots polynomial) ++ ".\r\n"
          | otherwise                         = "it has two real roots, " ++ show (getRoots polynomial) ++ ".\r\n"
describeQuadratic (Complement [p, q, r])  = describeQuadratic $ toDeveloped (Complement [p, q, r]) 