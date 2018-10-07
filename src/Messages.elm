module Messages exposing (..)

import Blogs.Messages
import Url exposing (Url)
import Browser exposing (UrlRequest)


type Msg
    = NoOp
    | BlogMsg Blogs.Messages.Msg
    | OnLocationChange Url
    | OnUrlRequest UrlRequest
