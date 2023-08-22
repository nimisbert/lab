module Exe22() where
import Polynomials ( BasicPolynomial(..), computeDiscriminant, numberOfRealRoots)

-- Q1
q1a :: BasicPolynomial
q1a = Quadratic 1 8 15
a1aDiscriminant :: Float
a1aDiscriminant = computeDiscriminant q1a
a1aNumberOfRoots :: Int
a1aNumberOfRoots = numberOfRealRoots q1a

q1b :: BasicPolynomial
q1b = Quadratic 1 (2*sqrt 3) 3
a1bDiscriminant :: Float
a1bDiscriminant = computeDiscriminant q1b
a1bNumberOfRoots :: Int
a1bNumberOfRoots = numberOfRealRoots q1b 

q1c :: BasicPolynomial
q1c = Quadratic 10 (- 1) (- 3)
a1cDiscriminant :: Float
a1cDiscriminant = computeDiscriminant q1c 
a1cNumberOfRoots :: Int 
a1cNumberOfRoots = numberOfRealRoots q1c

q1d :: BasicPolynomial
q1d = Quadratic (- 3) (- 11/5) (- 2/5)
a1dDiscriminant :: Float
a1dDiscriminant = computeDiscriminant q1d
a1dNumberOfRoots :: Int
a1dNumberOfRoots = numberOfRealRoots q1d 

q1e :: BasicPolynomial
q1e = Quadratic 9 20 0
a1eDiscriminant :: Float
a1eDiscriminant = computeDiscriminant q1e 
a1eNumberOfRoots :: Int 
a1eNumberOfRoots = numberOfRealRoots q1e

q1f :: BasicPolynomial
q1f = Quadratic (19/16) 0 (- 4)
q1fDiscriminant :: Float
q1fDiscriminant = computeDiscriminant q1f
q1fNumberOfRoots :: Int 
q1fNumberOfRoots = numberOfRealRoots q1f

q1g :: BasicPolynomial
q1g = Quadratic 13 8 2
q1gDiscriminant :: Float 
q1gDiscriminant = computeDiscriminant q1g 
q1gNumberOfRoots :: Int 
q1gNumberOfRoots = numberOfRealRoots q1g

q1h :: BasicPolynomial
q1h = Quadratic (1/3) (5/2) 3
q1hDiscriminant :: Float 
q1hDiscriminant = computeDiscriminant q1h
q1hNumberOfRoots :: Int
q1hNumberOfRoots = numberOfRealRoots q1h

-- Q2 
q2 :: Float -> BasicPolynomial
q2 b = Quadratic 15 b (-2)
a2bValue :: (Float, Float)
a2bValue = (7, -7)
a2Discriminant :: Float 
a2Discriminant = computeDiscriminant $ q2 $ fst a2bValue

-- Q3 
q3 :: Float -> BasicPolynomial
q3 a = Quadratic a 7 (1/4)
a3a :: Float
a3a = 49
a3b :: Int
a3b = numberOfRealRoots $ q3 a3a

-- Q4 
q4 :: Float -> BasicPolynomial
q4 p = Quadratic 1 (- 12) (27+p)
a4 :: Float 
a4 = 9

-- Q5 
q5 :: Float -> BasicPolynomial
q5 q = Quadratic 10 (- 10) (q/2)
a5 :: Float
a5 = 5

-- Q6 
q6 :: Float -> BasicPolynomial
q6 p = Quadratic 2 (10*p+1) 5
a6 :: Float -> Float 
a6 p = p*(5*p+1) - (39/20)

-- Q7 
q7 :: Float -> BasicPolynomial
q7 k = Quadratic 1 (k+5) ((k**2)/4)
a7a :: Float -> Float 
a7a k = 10*k + 25
a7b :: Float 
a7b = -5/2

-- Q8 
q8 :: Float -> BasicPolynomial
q8 k = Quadratic (k-(6/5)) (sqrt k) (5/4)
a8 :: Float 
a8 = 6/4