module Blogs.Message exposing (Msg(..))

import Types.Alias exposing (BlogId)


type Msg
    = ViewList
    | ViewEntry BlogId
