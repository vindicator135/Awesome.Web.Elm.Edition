module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model)
import Routing exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        BlogMsg _ ->
            ( model, Cmd.none )

        OnLocationChange url ->
            let
                newRoute = parseUrl url
            in
                ( { model | route = newRoute } , Cmd.none )

