module Update exposing (update)

import Blogs.Update as Blogs
import Browser exposing (..)
import Browser.Navigation as Nav
import Init exposing (init)
import Message exposing (Msg(..))
import Model exposing (Model, PageState(..), DataState(..))
import Routing exposing (..)
import Url as Url


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        BlogsMsg blogsMsg ->
            let
                subModel =
                    Blogs.update blogsMsg
                    
                pageState =
                    if model.pageState == Loading then
                        Loaded

                    else
                        Loading
            in
            ( { model | pageState = pageState, dataState = BlogState subModel }
            , Cmd.none
            )

        OnLocationChange url ->
            init url model.key

        OnUrlRequest urlRequest ->
            case urlRequest of
                Browser.Internal url ->
                    ( { model | pageState = Loading }, Nav.pushUrl model.key (Url.toString url) )

                Browser.External href ->
                    ( model
                    , Nav.load href
                    )
