module Main exposing (..)

import Html exposing (..)
import Models exposing (init, Model)
import View exposing (view)
import Update exposing (update)
import Messages exposing (..)
import Navigation exposing (Location)
import Routing


main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
