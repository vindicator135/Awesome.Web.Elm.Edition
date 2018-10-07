module Update exposing (..)

import Messages exposing (Msg(..))
import Models exposing (Model)
import Routing exposing (..)
import Browser exposing (..)
import Browser.Navigation as Nav
import Url as Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( Debug.log "NoOp" model, Cmd.none )

        BlogMsg _ ->
            ( Debug.log "BlogMsg" model, Cmd.none )

        OnLocationChange url ->
            let
                newUrl = Debug.log "FromFragment URL result" <| fromFragment url
                newRoute =
                    Debug.log "Result of parseUrl" (parseUrl <| newUrl)
            in
                ( Debug.log "OnLocationChange" { model | route = newRoute }, Cmd.none )

        OnUrlRequest urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    case url.fragment of
                        Nothing ->
                            -- If we got a link that didn't include a fragment,
                            -- it's from one of those (href "") attributes that
                            -- we have to include to make the RealWorld CSS work.
                            --
                            -- In an application doing path routing instead of
                            -- fragment-based routing, this entire
                            -- `case url.fragment of` expression this comment
                            -- is inside would be unnecessary.
                            let
                                internalUrl =
                                    Debug.log "Received invalid internalUrl fragment" url
                            in
                                ( model, Cmd.none )

                        Just _ ->
                            let
                                internalUrl =
                                    Debug.log "Received valid internalUrl fragment" url

                                s =
                                    Debug.log "Url string" (Url.toString url)
                            in
                                ( model, Nav.pushUrl model.key (Url.toString url) )

                -- ( model
                -- , Nav.pushUrl (Session.navKey (toSession model)) (Url.toString url)
                -- )
                Browser.External href ->
                    -- ( model
                    -- , Nav.load href
                    -- )
                    ( Debug.log "Received external OnUrlRequest" model, Cmd.none )
