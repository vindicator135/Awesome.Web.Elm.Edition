module Init exposing (init)

import Message exposing (Msg(..))
import Model exposing (Model, PageState(..))
import Blogs.Model as Blogs
import Url exposing (Url)
import Routing exposing (Route(..), parseUrl)
import Browser.Navigation exposing (Key)


init : Url -> Key -> ( Model, Cmd Msg )
init url key =
    let
        (pageState, blogs) =
            case parseUrl url of
                BlogEntry blogId ->
                    (Loaded, Blogs.BlogEntryView blogId)
                BlogList ->
                    (Loaded, Blogs.ListView)
                NotFound -> 
                    (Error "Page not found", Blogs.NotFound)
    in
    ( Model key pageState blogs, Cmd.none )