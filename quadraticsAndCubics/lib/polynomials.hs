module Polynomials (
      BasicPolynomial(..)
    , apply
    , getRoots
) where
import Data.Maybe ( fromMaybe )

data BasicPolynomial = 
    Quadratic Float Float Float                 -- f(x) = a*x^2 + b*x + c 
  | QuadraticSquareComplement Float Float Float -- f(x) = p*(x + q)^2 + r 
  | Cubic Float Float Float Float               -- f(x) = a*x^3 + b*x^2 + c*x + d
  deriving(Show)

apply :: BasicPolynomial -> Float -> Float 
apply (Quadratic a b c) x = a*x^2 + b*x + c
apply (QuadraticSquareComplement p q r) x = p*(x+q)^2 + r
apply (Cubic a b c d) x = a*x^3 + b*x^2 + c*x + d 

getRoots :: BasicPolynomial -> [Float]
getRoots (Quadratic a b c) 
  | delta >  0 = [ x0 , x1 ]
  | delta == 0 = [ x0 ] 
  | otherwise  = []
  where 
    delta = getDiscriminant (Quadratic a b c)
    x0 = (-b - sqrt delta ) / (2*a)
    x1 = (-b + sqrt delta ) / (2*a)
getRoots (QuadraticSquareComplement p q r)
  | (- r)/p > 0  = [ x0, x1 ]
  | (- r)/p == 0 = [ x0 ]
  | otherwise    = [] 
  where 
    x0 = -q - sqrt ((-r)/p)
    x1 = -q + sqrt ((-r)/p)

toSquareComplement :: BasicPolynomial -> BasicPolynomial
toSquareComplement (Quadratic a b c) = 
  let q = b / (2*a) in 
  QuadraticSquareComplement a q (c - (a*(q^2)))

toDeveloped :: BasicPolynomial -> BasicPolynomial
toDeveloped (QuadraticSquareComplement p q r) =
  Quadratic p (p*2*q) (r+p*q^2)

numberOfRealRoots :: BasicPolynomial -> Int 
numberOfRealRoots (Quadratic a b c)
  | signum delta == 0 = 1
  | signum delta >  0 = 2
  | otherwise         = 0 
  where 
    delta = getDiscriminant (Quadratic a b c)
numberOfRealRoots (QuadraticSquareComplement p q r)
  | signum r == 0        = 1
  | signum p /= signum r = 2
  | otherwise            = 0

getVertex :: BasicPolynomial -> (Float, Float)
getVertex (Quadratic a b c) = (-q, r)
  where (QuadraticSquareComplement p q r) = toSquareComplement (Quadratic a b c)
getVertex (QuadraticSquareComplement p q r) = (-q, r)

getDiscriminant :: BasicPolynomial -> Float
getDiscriminant (Quadratic a b c) = b**2 - 4*a*c

describeQuadratic :: BasicPolynomial -> String 
describeQuadratic (Quadratic a b c) = 
  "\r\n" ++ show a ++ "x^2 + " ++ show b ++ "x + " ++ show c ++ ", is an " ++ shape ++ "-shape Parabola.\r\n" 
  ++ "it's vertex is " ++ show vertex ++ ".\r\n"
  ++ "it's y-intercept is " ++ show (0.0, yinter) ++ ".\r\n"
  ++ xinter 
  where polynomial = Quadratic a b c
        shape = if a > 0.0 then "u" else "n"
        vertex = getVertex polynomial
        yinter = apply polynomial 0.0
        xinter
          | numberOfRealRoots polynomial == 0 = "it has no real roots.\r\n"
          | numberOfRealRoots polynomial == 1 = "it has one real root, " ++ show (getRoots polynomial) ++ ".\r\n"
          | otherwise                         = "it has two real roots, " ++ show (getRoots polynomial) ++ ".\r\n"
describeQuadratic (QuadraticSquareComplement p q r)  = describeQuadratic $ toDeveloped (QuadraticSquareComplement p q r) 
