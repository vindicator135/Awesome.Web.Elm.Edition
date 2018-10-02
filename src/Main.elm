module Main exposing (..)

import Models exposing (init, Model)
import View exposing (view)
import Update exposing (update)
import Messages exposing (Msg(..))
import Browser exposing (..)


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
