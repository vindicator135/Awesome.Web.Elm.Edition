module Blogs.Update exposing (update)

import Blogs.Model exposing (Model, ViewState(..))
import Blogs.Message exposing (Msg(..))

update : Msg -> Model -> Model
update msg model =
    case msg of
        ViewList -> ListView
        ViewEntry blogId -> BlogEntryView blogId