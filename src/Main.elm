module Main exposing (..)

import Html exposing (..)
import Models exposing (init, Model)
import View exposing (view)
import Update exposing (update)
<<<<<<< HEAD
import Messages exposing (Msg(..))
import Browser exposing (..)
=======
import Messages exposing (..)
import Navigation exposing (Location)
import Routing
>>>>>>> a6ba63c99b2155744db643c2466a1b0065e526c2


main : Program () Model Msg
main =
    Browser.application
        { init = \_ url key -> init url key
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        , onUrlRequest = OnUrlRequest
        , onUrlChange = OnLocationChange
        }
