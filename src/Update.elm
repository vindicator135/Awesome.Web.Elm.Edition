module Update exposing (..)

import Messages exposing (Msg(NoOp, BlogMsg))
import Models exposing (Model)

update : Msg -> Model -> ( Model , Cmd Msg)
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )
        BlogMsg _ ->
            ( model, Cmd.none )
