module Blogs.View exposing (..)

import Html exposing (..)
import Html.Attributes exposing (property)
import Json.Encode exposing (string)
import Blogs.Models exposing (Blog)
import Blogs.Messages exposing (..)


readView : Blog -> Html Msg
readView blog =
    div []
        [ header blog.title blog.published
        , htmlPrelude blog.pretext
        , htmlBody blog.content
        ]


header : String -> String -> Html Msg
header title published =
    div []
        [ h1 [] [ text title ]
        , h2 [] [ text published ]
        ]

prelude : String -> Html Msg
prelude pretext = 
    div []
        [ p [] [ text pretext ] ]


htmlPrelude : String  -> Html Msg
htmlPrelude prelude =
    div [ property "innerHTML" <| Json.Encode.string prelude ] []



htmlBody : String -> Html Msg
htmlBody content =
    div [ property "innerHTML" <| Json.Encode.string content ] []
