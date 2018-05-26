module Update exposing (..)

import Messages exposing (Msg(NoOp, BlogMsg))

update : Msg -> Model -> ( Model , Cmd Msg)
update msg model =
    case msg of
        NoOp ->
            ( model, msg )
        BlogMsg ->
            ( model, msg )
