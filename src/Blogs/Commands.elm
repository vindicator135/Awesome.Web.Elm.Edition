module Blogs.Commands exposing (..)

import Http
import Json.Decode exposing (..)
import Blogs.Models exposing (Blog)
import Blogs.Messages exposing (Msg(..))


resourceUrl : String
resourceUrl =
    "http://localhost:4000/blogs"


blogsDecoder : Json.Decode.Decoder (List Blog)
blogsDecoder =
    -- notice how decoders are composable
    Json.Decode.list blogDecoder


blogDecoder : Json.Decode.Decoder Blog
blogDecoder =
    Json.Decode.map5 Blog
        (Json.Decode.field "blogId" Json.Decode.int)
        (Json.Decode.field "pretitle" Json.Decode.string)
        (Json.Decode.field "title" Json.Decode.string)
        (Json.Decode.field "pretext" Json.Decode.string)
        (Json.Decode.field "published" Json.Decode.string)


fetchAll : Cmd Msg
fetchAll =
    Http.send FetchAllDone (Http.get resourceUrl blogsDecoder)
