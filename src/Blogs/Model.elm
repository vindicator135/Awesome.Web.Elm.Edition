module Blogs.Model exposing (Model, ViewState(..))

import Types.Alias exposing (BlogId)

type alias Model = ViewState

type ViewState =
    ListView
    | BlogEntryView BlogId
    | NotFound



