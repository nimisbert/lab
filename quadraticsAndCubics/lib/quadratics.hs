module Quadratics (
    Quadratic(..),
    apply,
    discriminant,
    roots,
    shape,
    vertex
) where

data Quadratic = Quadratic  { a::Float, b::Float, c::Float }

instance Show Quadratic where
    show (Quadratic  a b c) = "f(x) = "++show a++"x^2 + "++show b++"x + "++show c

apply :: Quadratic -> Float -> Float 
apply (Quadratic a b c) x = a*x^2 + b*x + c

discriminant :: Quadratic -> Float
discriminant (Quadratic a b c) = b^2 - 4*a*c

roots :: Quadratic -> [Float]
roots q@(Quadratic a b c) 
    | sd >  0   = [r1, r2]
    | sd == 0   = [r0]
    | otherwise = []
    where delta = discriminant q
          sd = signum delta  
          r0 = - b / (2*a)
          r1 = - b - sqrt delta / (2*a)
          r2 = - b + sqrt delta / (2*a)

shape :: Quadratic -> Char
shape (Quadratic a b c) = if a > 0.0 then 'u' else 'n'

vertex :: Quadratic -> (Float, Float)
vertex (Quadratic a b c) = (-q, r)
    where q = b / (2*a)
          r = c - (a*(q^2))
