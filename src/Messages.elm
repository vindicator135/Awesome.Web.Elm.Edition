module Messages exposing (..)

import Blogs.Messages
import Navigation exposing (Location)

type Msg
    = NoOp
    | BlogMsg Blogs.Messages.Msg
    | OnLocationChange Location
