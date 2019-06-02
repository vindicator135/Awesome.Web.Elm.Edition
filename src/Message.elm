module Message exposing (Msg(..))

import Blogs.Message as Blogs
import Url exposing (Url)
import Browser exposing (UrlRequest)


type Msg
    = BlogsMsg Blogs.Msg
    | OnLocationChange Url
    | OnUrlRequest UrlRequest
