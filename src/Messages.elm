module Messages exposing (..)

import Blogs.Messages


type Msg
    = NoOp
    | BlogMsg Blogs.Messages.Msg
