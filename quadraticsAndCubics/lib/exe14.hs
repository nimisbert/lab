module Exe14() where 
import Polynomials

-- Q1 
q1a :: BasicPolynomial
q1a = Quadratic 3 (- 12) 7
a1a :: BasicPolynomial
a1a = completingTheSquare q1a

q1b :: BasicPolynomial
q1b = Quadratic 2 16 5
a1b :: BasicPolynomial
a1b = completingTheSquare q1b 

q1c :: BasicPolynomial
q1c = Quadratic 5 20 (- 2)
a1c :: BasicPolynomial
a1c = completingTheSquare q1c

q1d :: BasicPolynomial
q1d = Quadratic 2 (- 4) (- 3)
a1d :: BasicPolynomial
a1d = completingTheSquare q1d

q1e :: BasicPolynomial
q1e = Quadratic 6 30 (- 20)
a1e :: BasicPolynomial
a1e = completingTheSquare q1e

q1f :: BasicPolynomial
q1f = Quadratic (- 1) (- 9) 9
a1f :: BasicPolynomial
a1f = completingTheSquare q1f 

q1g :: BasicPolynomial
q1g = Quadratic 4 (- 22) 5
a1g :: BasicPolynomial
a1g = completingTheSquare q1g 

q1h :: BasicPolynomial
q1h = Quadratic (- 3) 9 1 
a1h :: BasicPolynomial
a1h = completingTheSquare q1h

-- Q2 
q2a :: BasicPolynomial
q2a = Quadratic 4 24 (- 13)
a2a :: Maybe (Float, Float)
a2a = computeRoots $ completingTheSquare q2a

q2b :: BasicPolynomial
q2b = Quadratic 9 18 (- 16)
a2b :: Maybe (Float, Float)
a2b = computeRoots $ completingTheSquare q2b

q2c :: BasicPolynomial
q2c = Quadratic 2 (- 12) 9
a2c :: Maybe (Float, Float)
a2c = computeRoots $ completingTheSquare q2c

q2d :: BasicPolynomial
q2d = Quadratic 2 (- 12) (- 54)
a2d :: Maybe (Float, Float)
a2d = computeRoots $ completingTheSquare q2d

q2e :: BasicPolynomial
q2e = Quadratic 5 10 (- 1)
a2e :: Maybe (Float, Float)
a2e = computeRoots $ completingTheSquare q2e

q2f :: BasicPolynomial
q2f = Quadratic (- 3) (- 18) 2
a2f :: Maybe (Float, Float)
a2f = computeRoots $ completingTheSquare q2f

q2g :: BasicPolynomial
q2g = Quadratic 3 2 (-7/6)
a2g :: Maybe (Float, Float)
a2g = computeRoots $ completingTheSquare q2g 

q2h :: BasicPolynomial
q2h = Quadratic 5 (- 3) (2/5)
a2h :: Maybe (Float, Float)
a2h = computeRoots $ completingTheSquare q2h

-- Q3 
-- cf. computeRoots on QuadraticSquareComplement
-- ./polynomials.hs, line 27 to 32