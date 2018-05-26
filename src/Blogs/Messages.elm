module Blog.Messages exposing (..)

import Http
import Blog.Models exposing (Blog)


type Msg
    NoOp
    | FetchAllDone (Result Http.Error (List Blog))