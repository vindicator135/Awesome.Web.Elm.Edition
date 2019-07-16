module Model exposing (Model, PageState(..), DataState(..))

import Blogs.Model as Blogs
import Browser.Navigation exposing (Key)
import Message exposing (Msg(..))
import Routing exposing (Route(..), parseUrl)
import Url exposing (Url)


type alias Model =
    { key : Key
    , pageState : PageState
    , dataState : DataState
    }


type PageState
    = Loading
    | Loaded
    | Error String


type DataState
    = BlogState Blogs.Model
    | MainState