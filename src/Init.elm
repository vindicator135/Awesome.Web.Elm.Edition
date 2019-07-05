module Init exposing (init)

import Blogs.Model as Blogs
import Browser.Navigation exposing (Key)
import Message exposing (Msg(..))
import Model exposing (Model, PageState(..))
import Routing exposing (Route(..), parseUrl)
import Url exposing (Url)


init : Url -> Key -> ( Model, Cmd Msg )
init url key =
    let
        ( pageState, blogs ) =
            case parseUrl url of
                BlogEntry blogId ->
                    ( Loaded, Blogs.BlogEntryView blogId )

                BlogList ->
                    ( Loaded, Blogs.ListView )

                NotFound ->
                    ( Error "Page not found", Blogs.NotFound )

        _ =
            Debug.log "init" url
    in
    ( Model key pageState blogs, Cmd.none )
