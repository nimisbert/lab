module Main where
import Graphics.Gloss
import Graphics.Gloss.Interface.Pure.Game
import Linear

data Model = Model {
      _paddlePos :: V2 Float
    , _ballPos :: V2 Float
}

main :: IO ()
main = do 
    let window  = InWindow "Proto" (600, 400) (0, 0)
        bgcolor = makeColor 0.4 0.6 1.0 1.0
        fps = 30
        model = Model (V2 0 0) (V2 100 200)
    play window bgcolor fps model handleDisplay handleEvent handleTime

handleDisplay :: Model -> Picture
handleDisplay (Model (V2 paddleX paddleY) (V2 ballX ballY)) =
    Pictures [
          translate paddleX paddleY $ color black $ circle 30
        , translate ballX ballY $ color white $ circleSolid 10
    ]

handleEvent :: Event -> Model -> Model 
handleEvent (EventMotion (x, y)) m = m { _paddlePos = V2 x y }
handleEvent _ m = m

handleTime :: Float -> Model -> Model 
handleTime dt m = 
    let (V2 ballX ballY) = _ballPos m
    in m { _ballPos = V2 ballX (ballY - 20*dt) }
