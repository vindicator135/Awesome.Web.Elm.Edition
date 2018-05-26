module Blogs.Commands exposing (..)

import Blogs.Models exposing (Blog)
import Blogs.Messages exposing (Msg(..))

fetchAll : Cmd Msg
fetchAll =
    FetchAll (Just [])