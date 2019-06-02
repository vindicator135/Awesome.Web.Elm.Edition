module Model exposing (Model, PageState(..))

import Message exposing (Msg(..))
import Blogs.Model as Blogs
import Url exposing (Url)
import Routing exposing (Route(..), parseUrl)
import Browser.Navigation exposing (Key)


type alias Model =
    { key : Key
    , pageState : PageState
    , blogs : Blogs.Model
    }


type PageState =
    Loading
    | Loaded
    | Error String

