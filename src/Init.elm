module Init exposing (init)

import Blogs.Model as Blogs
import Browser.Navigation exposing (Key)
import Message exposing (Msg(..))
import Model exposing (Model, PageState(..), DataState(..))
import Routing exposing (Route(..), parseUrl)
import Url exposing (Url)


init : Url -> Key -> ( Model, Cmd Msg )
init url key =
    let
        ( pageState, dataState ) =
            case parseUrl url of
                BlogEntry blogId ->
                    ( Loaded, BlogState <| Blogs.BlogEntryView blogId )

                BlogList ->
                    ( Loaded, BlogState <| Blogs.ListView )

                Main ->
                    ( Loaded, MainState )
    in
    ( Model key pageState dataState, Cmd.none )
