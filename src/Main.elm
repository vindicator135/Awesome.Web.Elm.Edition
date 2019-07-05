module Main exposing (main)

import Browser exposing (..)
import Init exposing (init)
import Message exposing (Msg(..))
import Model exposing (Model)
import Update exposing (update)
import View exposing (view)


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
