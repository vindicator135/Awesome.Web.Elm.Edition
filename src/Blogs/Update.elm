module Blogs.Update exposing (update)

import Blogs.Message exposing (Msg(..))
import Blogs.Model exposing (Model, ViewState(..))


update : Msg -> Model
update msg =
    case msg of
        ViewList ->
            ListView

        ViewEntry blogId ->
            BlogEntryView blogId
