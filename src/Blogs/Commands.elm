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
    Json.Decode.map4 Blog
        (Json.Decode.field "blogId" Json.Decode.int)
        (Json.Decode.field "title" Json.Decode.string)
        (Json.Decode.field "content" Json.Decode.string)
        (Json.Decode.field "published" Json.Decode.string)


fetchAll : Cmd Msg
fetchAll =
    let
        request =
            Http.get resourceUrl blogsDecoder
    in
        Http.send FetchAllDone request
