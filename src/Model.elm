module Model exposing (Model, PageState(..))

import Blogs.Model as Blogs
import Browser.Navigation exposing (Key)
import Message exposing (Msg(..))
import Routing exposing (Route(..), parseUrl)
import Url exposing (Url)


type alias Model =
    { key : Key
    , pageState : PageState
    , blogs : Blogs.Model
    }


type PageState
    = Loading
    | Loaded
    | Error String
