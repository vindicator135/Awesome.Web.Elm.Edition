module Update exposing (..)

import Messages exposing (Msg(NoOp, BlogMsg, OnLocationChange))
import Models exposing (Model)
import Routing exposing (..)


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        BlogMsg _ ->
            ( model, Cmd.none )
        OnLocationChange _ ->
            ( model, Cmd.none )

        OnLocationChange location ->
            let
                newRoute = parseLocation location
            in
                ( { model | route = newRoute } , Cmd.none )

