module Main exposing (..)

import Html exposing (..)
import Models exposing (init, Model)
import View exposing (view)
import Update exposing (update)
import Messages exposing (..)


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        }
