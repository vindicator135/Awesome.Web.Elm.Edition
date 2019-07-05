module Message exposing (Msg(..))

import Blogs.Message as Blogs
import Browser exposing (UrlRequest)
import Url exposing (Url)


type Msg
    = BlogsMsg Blogs.Msg
    | OnLocationChange Url
    | OnUrlRequest UrlRequest
