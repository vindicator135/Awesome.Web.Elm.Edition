module Main exposing (..)

import Models exposing (init, Model)
import View exposing (view)
import Update exposing (update)
import Messages exposing (Msg(OnLocationChange))
import Navigation exposing (Location)


main : Program Never Model Msg
main =
    Navigation.program OnLocationChange
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
