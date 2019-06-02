module Main exposing (..)

import Init exposing (init)
import Model exposing (Model)
import View exposing (view)
import Update exposing (update)
import Message exposing (Msg(..))
import Browser exposing (..)


main : Program () Model Msg
main =
    Browser.application
        { init = \() url key -> init url key
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        , onUrlRequest = OnUrlRequest
        , onUrlChange = OnLocationChange
        }
