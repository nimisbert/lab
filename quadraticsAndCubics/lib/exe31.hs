module Exe31(
      q1a 
    , q1b
    , q1c
    ) where 
    
import Polynomials (
      BasicPolynomial(..)
    , computePolynomial
    )

-- Q1 
q1a :: BasicPolynomial
q1a = Quadratic 1 0 (-1)

q1b :: BasicPolynomial 
q1b = Quadratic 1 0 (-9)

q1c :: BasicPolynomial
q1c = Quadratic 1 0 0