module Exe21() where
import Polynomials

-- Q1 
-- Real Roots from Graphics
a1a :: Maybe Int
a1a = Just 2
a1b :: Maybe Int
a1b = Just 1
a1c :: Maybe Int 
a1c = Nothing 
a1d :: Maybe Int 
a1d = Just 2

-- Q2 
q2 :: BasicPolynomial
q2 = Quadratic 1 6 10

a2numberOfRoots :: Int
a2numberOfRoots = numberOfRealRoots q2

a2lineOfSymetry :: (Float, Float)
a2lineOfSymetry = lineOfSymetry q2

-- Q3 
q3 :: BasicPolynomial
q3 = QuadraticSquareComplement (-1) (7/2) (25/4)

a3 :: Int
a3 = numberOfRealRoots q3