module Main where 
import qualified Graphics.Gloss as G
import qualified Quadratics as Q 

main :: IO()
main = do { 
      putStrLn $ show f
    ; putStrLn $ show $ Q.apply f 1.0
    ; putStrLn $ show $ Q.discriminant f
    ; putStrLn $ show $ Q.roots f
    ; putStrLn $ show $ Q.shape f
    ; putStrLn $ show $ Q.vertex f
    }
    where f = Q.Quadratic (-1.0) 4.0 0.0
