module Polynomials (
    BasicPolynomial(..)
  , computePolynomial
  , computeRoots
  , completingTheSquare
  , numberOfRealRoots
  , computeVertex
  , computeDiscriminant
  , developingTheSquareComplement
) where

import Data.Maybe( fromMaybe )

-- Chapter 2 part 1 : Quadratic Equations 

data BasicPolynomial = 
    Quadratic Float Float Float                 -- f(x) = a*x^2 + b*x + c 
  | QuadraticSquareComplement Float Float Float -- f(x) = p*(x + q)^2 + r 
  | Cubic Float Float Float Float               -- f(x) = a*x^3 + b*x^2 + c*x + d
  deriving(Show)

computePolynomial :: BasicPolynomial -> Float -> Float 
computePolynomial (Quadratic a b c) x = a*x^2 + b*x + c
computePolynomial (QuadraticSquareComplement p q r) x = p*(x+q)^2 + r
computePolynomial (Cubic a b c d) x = a*x^3 + b*x^2 + c*x + d 

computeRoots :: BasicPolynomial -> Maybe (Float, Float)
computeRoots (Quadratic a b c) 
  | delta >= 0 = return ( x0 , x1 )
  | otherwise  = Nothing
  where 
    delta = computeDiscriminant (Quadratic a b c)
    x0 = (-b - sqrt delta ) / (2*a)
    x1 = (-b + sqrt delta ) / (2*a)
computeRoots (QuadraticSquareComplement p q r)
  | (- r)/p >= 0 = return (x0, x1)
  | otherwise   = Nothing 
  where 
    x0 = -q - sqrt ((-r)/p)
    x1 = -q + sqrt ((-r)/p)

completingTheSquare :: BasicPolynomial -> BasicPolynomial
completingTheSquare (Quadratic a b c) = 
  let q = b / (2*a) in 
  QuadraticSquareComplement a q (c - (a*(q^2)))

developingTheSquareComplement :: BasicPolynomial -> BasicPolynomial
developingTheSquareComplement (QuadraticSquareComplement p q r) =
  Quadratic p (p*2*q) (r+p*q^2)

-- Chapter 2 part 2 : Functions and Roots

numberOfRealRoots :: BasicPolynomial -> Int 
numberOfRealRoots (Quadratic a b c)
  | signum delta == 0 = 1
  | signum delta >  0 = 2
  | otherwise         = 0 
  where 
    delta = computeDiscriminant (Quadratic a b c)
numberOfRealRoots (QuadraticSquareComplement p q r)
  | signum r == 0        = 1
  | signum p /= signum r = 2
  | otherwise            = 0

computeVertex :: BasicPolynomial -> (Float, Float)
computeVertex (Quadratic a b c) = (-q, r)
  where (QuadraticSquareComplement p q r) = completingTheSquare (Quadratic a b c)
computeVertex (QuadraticSquareComplement p q r) = (-q, r)

computeDiscriminant :: BasicPolynomial -> Float
computeDiscriminant (Quadratic a b c) = b**2 - 4*a*c

describeQuadratic :: BasicPolynomial -> String 
describeQuadratic (Quadratic a b c) = 
  "\r\n" ++ show a ++ "x^2 + " ++ show b ++ "x + " ++ show c ++ ", is an " ++ shape ++ "-shape Parabola.\r\n" 
  ++ "it's vertex is " ++ show vertex ++ ".\r\n"
  ++ "it's y-intercept is " ++ show (0.0, yinter) ++ ".\r\n"
  ++ xinter 
  where polynomial = Quadratic a b c
        shape = if a > 0.0 then "u" else "n"
        vertex = computeVertex polynomial
        yinter = computePolynomial polynomial 0.0
        xinter
          | numberOfRealRoots polynomial == 0 = "it has no real roots.\r\n"
          | numberOfRealRoots polynomial == 1 = "it has one real root, " ++ show (fst $ fromMaybe (0.0, 0.0) (computeRoots polynomial)) ++ ".\r\n"
          | otherwise                         = "it has two real roots, " ++ show (fromMaybe (0.0, 0.0) (computeRoots polynomial)) ++ ".\r\n"
describeQuadratic (QuadraticSquareComplement p q r)  = describeQuadratic $ developingTheSquareComplement (QuadraticSquareComplement p q r) 

-- Chapter 2 part 3 : Quadratic Graphs