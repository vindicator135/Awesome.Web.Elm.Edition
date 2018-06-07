module Blogs.Messages exposing (..)

import Http exposing (..)
import Blogs.Models exposing (Blog)


type Msg
    = NoOp
    | FetchAllDone (Result Http.Error (List Blog))
    | ViewEntry Blog